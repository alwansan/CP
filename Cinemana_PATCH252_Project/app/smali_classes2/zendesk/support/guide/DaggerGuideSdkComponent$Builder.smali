.class public final Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerGuideSdkComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/guide/DaggerGuideSdkComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public coreModule:Lzendesk/core/CoreModule;

.field public guideModule:Lzendesk/support/GuideModule;

.field public guideSdkModule:Lzendesk/support/guide/GuideSdkModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lzendesk/support/guide/DaggerGuideSdkComponent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lzendesk/support/guide/GuideSdkComponent;
    .locals 5

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    const-class v1, Lzendesk/core/CoreModule;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/iq6;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;->guideModule:Lzendesk/support/GuideModule;

    const-class v1, Lzendesk/support/GuideModule;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/iq6;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;->guideSdkModule:Lzendesk/support/guide/GuideSdkModule;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lzendesk/support/guide/GuideSdkModule;

    invoke-direct {v0}, Lzendesk/support/guide/GuideSdkModule;-><init>()V

    iput-object v0, p0, Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;->guideSdkModule:Lzendesk/support/guide/GuideSdkModule;

    .line 5
    :cond_0
    new-instance v0, Lzendesk/support/guide/DaggerGuideSdkComponent;

    iget-object v1, p0, Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    iget-object v2, p0, Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;->guideModule:Lzendesk/support/GuideModule;

    iget-object v3, p0, Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;->guideSdkModule:Lzendesk/support/guide/GuideSdkModule;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lzendesk/support/guide/DaggerGuideSdkComponent;-><init>(Lzendesk/core/CoreModule;Lzendesk/support/GuideModule;Lzendesk/support/guide/GuideSdkModule;Lzendesk/support/guide/DaggerGuideSdkComponent$1;)V

    return-object v0
.end method

.method public coreModule(Lzendesk/core/CoreModule;)Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    return-object p0
.end method

.method public guideModule(Lzendesk/support/GuideModule;)Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;->guideModule:Lzendesk/support/GuideModule;

    return-object p0
.end method
