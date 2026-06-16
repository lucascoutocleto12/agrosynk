module.exports = {
    uiPort: process.env.PORT || 1880,
    flowFile: "flows.json",
    credentialSecret: process.env.CREDENTIAL_SECRET || "agrosynk-secret",
    httpAdminRoot: "/admin",
    httpNodeRoot: "/",
    functionGlobalContext: {}
};
