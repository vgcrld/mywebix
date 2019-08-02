// Requires jQuery!
jQuery.ajax({
    url: "https://galileosuite.atlassian.net/s/d41d8cd98f00b204e9800998ecf8427e-T/b6rpgs/b/3/e73395c53c3b10fde2303f4bf74ffbf6/_/download/batch/com.atlassian.jira.collector.plugin.jira-issue-collector-plugin:issuecollector-embededjs/com.atlassian.jira.collector.plugin.jira-issue-collector-plugin:issuecollector-embededjs.js?locale=en-US&collectorId=2d3698ac",
    type: "get",
    cache: true,
    dataType: "script"
});

 window.ATL_JQ_PAGE_PROPS =  {
    "triggerFunction": function(showCollectorDialog) {
        //Requires that jQuery is available! 
        jQuery("#myCustomTrigger").click(function(e) {
            e.preventDefault();
            showCollectorDialog();
        });
    }};

