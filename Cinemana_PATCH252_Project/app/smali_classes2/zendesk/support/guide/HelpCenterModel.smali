.class public Lzendesk/support/guide/HelpCenterModel;
.super Ljava/lang/Object;
.source "HelpCenterModel.java"

# interfaces
.implements Lzendesk/support/guide/HelpCenterMvp$Model;


# instance fields
.field public final provider:Lzendesk/support/HelpCenterProvider;

.field public final settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;


# direct methods
.method public constructor <init>(Lzendesk/support/HelpCenterProvider;Lzendesk/support/HelpCenterSettingsProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterModel;->provider:Lzendesk/support/HelpCenterProvider;

    .line 3
    iput-object p2, p0, Lzendesk/support/guide/HelpCenterModel;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    return-void
.end method


# virtual methods
.method public getSettings(Lcom/shabakaty/downloader/n95;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/n95<",
            "Lzendesk/support/HelpCenterSettings;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterModel;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    invoke-interface {v0, p1}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/shabakaty/downloader/n95;)V

    return-void
.end method

.method public search(Ljava/util/List;Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;Lcom/shabakaty/downloader/n95;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/n95<",
            "Ljava/util/List<",
            "Lzendesk/support/SearchArticle;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterModel;->provider:Lzendesk/support/HelpCenterProvider;

    new-instance v1, Lzendesk/support/HelpCenterSearch$Builder;

    invoke-direct {v1}, Lzendesk/support/HelpCenterSearch$Builder;-><init>()V

    .line 2
    invoke-virtual {v1, p3}, Lzendesk/support/HelpCenterSearch$Builder;->withQuery(Ljava/lang/String;)Lzendesk/support/HelpCenterSearch$Builder;

    move-result-object p3

    .line 3
    invoke-virtual {p3, p1}, Lzendesk/support/HelpCenterSearch$Builder;->withCategoryIds(Ljava/util/List;)Lzendesk/support/HelpCenterSearch$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lzendesk/support/HelpCenterSearch$Builder;->withSectionIds(Ljava/util/List;)Lzendesk/support/HelpCenterSearch$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p4}, Lzendesk/support/HelpCenterSearch$Builder;->withLabelNames([Ljava/lang/String;)Lzendesk/support/HelpCenterSearch$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lzendesk/support/HelpCenterSearch$Builder;->build()Lzendesk/support/HelpCenterSearch;

    move-result-object p1

    .line 7
    invoke-interface {v0, p1, p5}, Lzendesk/support/HelpCenterProvider;->searchArticles(Lzendesk/support/HelpCenterSearch;Lcom/shabakaty/downloader/n95;)V

    return-void
.end method
