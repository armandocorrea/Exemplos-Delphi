using Amazon;
using Amazon.Pinpoint;
using Amazon.Pinpoint.Model;
using RGiesecke.DllExport;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace SMSPinPoint
{
    [Guid("B9998A3D-6B48-41DB-BDC8-8DD7216D360E")]
    [ComVisible(true)]
    public class SMSEnvio
    {
        class DadosPinPoint
        {
            public AmazonPinpointClient client { get; set; }
            public SendMessagesRequest sendRequest { get; set; }
            public SendMessagesResponse response { get; set; }
        }

        [DllExport]
        public static string EnviarSMS(string aDestination, string aMessage, string aRegionAWS, string aAppID, string aAccessToken, string aSecretToken)
        {
            string retorno = "";

            try
            {
                //Salvar parametros de entrada da DLL para criar um log.
                string[] lines = { aDestination, aMessage, aRegionAWS, aAppID, aAccessToken, aSecretToken };
                string path = System.AppDomain.CurrentDomain.BaseDirectory.ToString() + "Parametros.txt";
                System.IO.File.WriteAllLines(@path, lines);

                DadosPinPoint dadosPinPoint = new DadosPinPoint();
                var awsCredentials = new Amazon.Runtime.BasicAWSCredentials(aAccessToken, aSecretToken);
                                
                dadosPinPoint.client = new AmazonPinpointClient(awsCredentials, RegionEndpoint.GetBySystemName(aRegionAWS));
                                
                dadosPinPoint.sendRequest = new SendMessagesRequest();
                dadosPinPoint.sendRequest.ApplicationId = aAppID;
                dadosPinPoint.sendRequest.MessageRequest = new MessageRequest();
                dadosPinPoint.sendRequest.MessageRequest.Addresses = new Dictionary<string, AddressConfiguration>();

                AddressConfiguration addressConfiguration = new AddressConfiguration();
                addressConfiguration.ChannelType = "SMS";

                DirectMessageConfiguration messageConfiguration = new DirectMessageConfiguration();
                messageConfiguration.SMSMessage = new SMSMessage();
                messageConfiguration.SMSMessage.Body = aMessage;
                messageConfiguration.SMSMessage.MessageType = "TRANSACTIONAL";

                dadosPinPoint.sendRequest.MessageRequest.Addresses.Add(aDestination, addressConfiguration);
                dadosPinPoint.sendRequest.MessageRequest.MessageConfiguration = messageConfiguration;
                
                dadosPinPoint.response = dadosPinPoint.client.SendMessages(dadosPinPoint.sendRequest);

                retorno = dadosPinPoint.response.HttpStatusCode.ToString();

                return retorno;
            }
            catch (Exception ex)
            {
                return ex.Message;
            }

        }        

    }
}
