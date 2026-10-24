.class public Lzendesk/support/requestlist/RequestListViewModule;
.super Ljava/lang/Object;
.source "RequestListViewModule.java"


# instance fields
.field private final activity:Lzendesk/support/requestlist/RequestListActivity;

.field private final config:Lzendesk/support/requestlist/RequestListConfiguration;


# direct methods
.method public constructor <init>(Lzendesk/support/requestlist/RequestListActivity;Lzendesk/support/requestlist/RequestListConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListViewModule;->activity:Lzendesk/support/requestlist/RequestListActivity;

    .line 3
    iput-object p2, p0, Lzendesk/support/requestlist/RequestListViewModule;->config:Lzendesk/support/requestlist/RequestListConfiguration;

    return-void
.end method


# virtual methods
.method public view(Lcom/squareup/picasso/k;)Lzendesk/support/requestlist/RequestListView;
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestListView;

    iget-object v1, p0, Lzendesk/support/requestlist/RequestListViewModule;->activity:Lzendesk/support/requestlist/RequestListActivity;

    iget-object v2, p0, Lzendesk/support/requestlist/RequestListViewModule;->config:Lzendesk/support/requestlist/RequestListConfiguration;

    invoke-direct {v0, v1, v2, p1}, Lzendesk/support/requestlist/RequestListView;-><init>(Lcom/shabakaty/downloader/r9;Lzendesk/support/requestlist/RequestListConfiguration;Lcom/squareup/picasso/k;)V

    return-object v0
.end method
