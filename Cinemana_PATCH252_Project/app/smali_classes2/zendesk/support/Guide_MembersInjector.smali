.class public final Lzendesk/support/Guide_MembersInjector;
.super Ljava/lang/Object;
.source "Guide_MembersInjector.java"

# interfaces
.implements Lcom/shabakaty/downloader/pr2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/pr2<",
        "Lzendesk/support/Guide;",
        ">;"
    }
.end annotation


# direct methods
.method public static injectBlipsProvider(Lzendesk/support/Guide;Lzendesk/support/HelpCenterBlipsProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/Guide;->blipsProvider:Lzendesk/support/HelpCenterBlipsProvider;

    return-void
.end method

.method public static injectGuideModule(Lzendesk/support/Guide;Lzendesk/support/GuideModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/Guide;->guideModule:Lzendesk/support/GuideModule;

    return-void
.end method
