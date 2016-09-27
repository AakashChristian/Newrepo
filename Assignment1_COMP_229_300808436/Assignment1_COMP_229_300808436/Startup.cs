using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Assignment1_COMP_229_300808436.Startup))]
namespace Assignment1_COMP_229_300808436
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
