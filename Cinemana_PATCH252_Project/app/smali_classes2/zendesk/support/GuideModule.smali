.class public Lzendesk/support/GuideModule;
.super Ljava/lang/Object;
.source "GuideModule.java"


# instance fields
.field public final articleVoteStorage:Lzendesk/support/ArticleVoteStorage;

.field public final blipsProvider:Lzendesk/support/HelpCenterBlipsProvider;

.field public final helpCenterProvider:Lzendesk/support/HelpCenterProvider;

.field public final helpCenterTracker:Lzendesk/support/HelpCenterTracker;

.field public final id:Ljava/util/UUID;

.field public final okHttpClient:Lcom/shabakaty/downloader/a63;

.field public final settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;


# direct methods
.method public constructor <init>(Lzendesk/support/HelpCenterProvider;Lzendesk/support/HelpCenterSettingsProvider;Lzendesk/support/HelpCenterBlipsProvider;Lzendesk/support/HelpCenterTracker;Lzendesk/support/ArticleVoteStorage;Lcom/shabakaty/downloader/a63;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/GuideModule;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    .line 3
    iput-object p2, p0, Lzendesk/support/GuideModule;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    .line 4
    iput-object p3, p0, Lzendesk/support/GuideModule;->blipsProvider:Lzendesk/support/HelpCenterBlipsProvider;

    .line 5
    iput-object p4, p0, Lzendesk/support/GuideModule;->helpCenterTracker:Lzendesk/support/HelpCenterTracker;

    .line 6
    iput-object p5, p0, Lzendesk/support/GuideModule;->articleVoteStorage:Lzendesk/support/ArticleVoteStorage;

    .line 7
    iput-object p6, p0, Lzendesk/support/GuideModule;->okHttpClient:Lcom/shabakaty/downloader/a63;

    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/GuideModule;->id:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public getId()Ljava/util/UUID;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/GuideModule;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public providesArticleVoteStorage()Lzendesk/support/ArticleVoteStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/GuideModule;->articleVoteStorage:Lzendesk/support/ArticleVoteStorage;

    return-object v0
.end method

.method public providesHelpCenterProvider()Lzendesk/support/HelpCenterProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/GuideModule;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    return-object v0
.end method

.method public providesOkHttpClient()Lcom/shabakaty/downloader/a63;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/GuideModule;->okHttpClient:Lcom/shabakaty/downloader/a63;

    return-object v0
.end method

.method public providesSettingsProvider()Lzendesk/support/HelpCenterSettingsProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/GuideModule;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    return-object v0
.end method
