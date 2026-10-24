.class public Lzendesk/support/ZendeskProviderStore;
.super Ljava/lang/Object;
.source "ZendeskProviderStore.java"

# interfaces
.implements Lzendesk/support/ProviderStore;


# instance fields
.field public final helpCenterProvider:Lzendesk/support/HelpCenterProvider;

.field public final requestProvider:Lzendesk/support/RequestProvider;

.field public final uploadProvider:Lzendesk/support/UploadProvider;


# direct methods
.method public constructor <init>(Lzendesk/support/HelpCenterProvider;Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ZendeskProviderStore;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    .line 3
    iput-object p2, p0, Lzendesk/support/ZendeskProviderStore;->requestProvider:Lzendesk/support/RequestProvider;

    .line 4
    iput-object p3, p0, Lzendesk/support/ZendeskProviderStore;->uploadProvider:Lzendesk/support/UploadProvider;

    return-void
.end method
