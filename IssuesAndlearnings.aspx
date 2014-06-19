
                1. Install-Package DotNetOpenAuth.AspNet (to resolve issues if any w.r.t to DotNetOpenAuth
                    on building solutio
            
                2. Install-Package WebGrease latest one (to resolve issues if any w.r.t to @Styles.Render
                    on BundleConfig.cs file)
            
                3. Install-Package Unity -Version 2.1.505 ( This latest version of MS Unity has
                to be installed in case Unity Version (used by Unity.Mvc4) is > 2.1+ in packages.config
                <u>Note:</u> Unity.Mvc4 has to be installed to get pre-built Bootstapper class for
                Dependency Injection.
                <package id="Unity" version="2.1.505.2" targetframework="net40" />
                <package id="Unity.Mvc4" version="1.2.0.0" targetframework="net40" />
                )
                
                for downloading unity.MVC4, use command => Install-Package Unity.Mvc4
            
                4. Install-Package Microsoft.AspNet.Mvc-Version 4.0.30506 (for correct version of
                ASP.NET MVC 4 DLL)
           
                5. Install-Package Microsoft.AspNet.Web.Optimization to resolve issues if any with
                the dll on build
            
                6. Add the 2 lines below in web.config
                <appsettings> in case MVC routes to Login.aspx by default on running the application in debug mode.
                    <add key="autoFormsAuthentication" value="false" />
                    <add key="enableSimpleMembership" value="false" />
            
                7. Remember to upgrade all libraries of jquery, knoockout etc after creating a new
                MVC 3/ 4 Project. using NUGET Package Manager.
            
                8. Also upgrade NUGET Package Manager from time to time
            
                9. For Knockout Bundling = > debug version to be used. keep name as "knockout-3.0.0.debug.js"
                as it is with debug suffix. Minified version fails when optimization is enabled.
            
                10. VS Intellisense does not work if RequireJS AMD is used.
           
                11. If jQuery templates is used with .NET 2.0 UpdatePanel, then add scripts before
                form close tag and bind all events in "DOM" ready event of jQuery.
            
                12. <i><strong>Dapper Oracle Support:</strong></i> Add a custom implementation of
                Dapper.SqlMapper.IDynamicParameters which supports Oracle.DataAccess.Client.OracleDbType.
                <br />
                <b>Petapoco, ServiceStack.OrmLite & FluentData also has Good Oracle Support.</b>
                <br />
                ServiceStack.OrmLite.Oracle is for Oracle support with OrmLite.
                
                13. To Enable Nuget Package Manager in VS2010, install nuget for VS2010 ultimate from:
                http://visualstudiogallery.msdn.microsoft.com/27077b70-9dad-4c64-adcf-c7cf6bc9970c 
                
                14. Enable win powershell 2.0 on VS2010 by downloading Win powershell from
                http://www.microsoft.com/en-us/download/details.aspx?id=16818 
                Afetr install, it enables Package manager Console and allows downloading packages using
                Nuget commands (ex: Install-package jquery)

                15. The wildcard certificate allows IIS to use the same certificate for all of the sites on 
                a particular port. That takes away the requirement that IIS know which site's certificate to 
                use in decrypting the data.
                Secure server bindings help IIS in securing the wildcard certificate, a requirement for setting this up.
                Thus, it is very possible to have multiple SSL sites on a single server, all sharing the same port.
                
                Steps:
                a) Create wildcard SSL certificate
                b) Create Secure Server Bindings
                
                Link=> http://tech.lanesnotes.com/2008/03/creating-self-signed-wildcard-ssl.html
                
                16.Before deploying MVC applications, right click on project and "Add Deployable Dependencies"
                
                17.When issuing SSL certificate on IIS web server, ensure to request certificate with the same name as the 
                   website URL.
                  if website URL is https://sdlcdev.nam.nsroot.net, then request SSL cert with name as "sdlcdev.nam.nsroot.net"              

                18. To Deploy ASP.NET 4.0 web application on Windows Server 2008/ R2, follow the steps mentioned below:
                   * confirm that all dll library is having "target platform" set to "Any CPU" in the project properties
                   * Map Application pool in IIS 7.0/ 7.5 to "Classic" Mode.
                   
                   * Note: check URL below to know why "Integrated" mode does not work on IIS 7/ 7.5 for ASP.NET web application
                     http://weblogs.asp.net/reganschroder/iis7-integrated-mode-request-is-not-available-in-this-context-exception-in-application-start.

                19. ** using DurandalJS in ASP.NET MVC 4 with razor in VS 2010, Install Nuget Packages in the order shown below
                   * Install-Package HotTowel 
                   * Install-Package AttributeRouting
                   
                   Basically, durandal is looking for views in "/App/Views/" so we need to add a route that 
                   takes all requests for *.html files for that folder and re-route it to a razor view. 
                   AttributeRouting is the easiest way to perform this.
                   
                   Durandal works normally with html files and if Razor is used, we have to use AttributeRouting
                   
                20. To use Durandal in VS2012, select empty template and install just one package mentioned below
                   * Install-Package Durandal.StarterKit
                   
                   To use Durandal with MVC 4 Razor and VS2010, check link below:
                   http://www.codeproject.com/Articles/715041/Durandal-View-s-with-Razor-and-Csharp-ViewModel
                
                21. Use "SlowCheetah" Visual Studio Extension to enable XDT:Transform on app.config files of 
                    Winform applications.
