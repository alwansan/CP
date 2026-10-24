.class public final enum Lzendesk/support/Guide;
.super Ljava/lang/Enum;
.source "Guide.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/support/Guide;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lzendesk/support/Guide;

.field public static final enum INSTANCE:Lzendesk/support/Guide;


# instance fields
.field public blipsProvider:Lzendesk/support/HelpCenterBlipsProvider;

.field public guideModule:Lzendesk/support/GuideModule;

.field public helpCenterLocaleOverride:Ljava/util/Locale;

.field public helpCenterTracker:Lzendesk/support/HelpCenterTracker;

.field public initialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/Guide;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/support/Guide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/support/Guide;->INSTANCE:Lzendesk/support/Guide;

    const/4 v1, 0x1

    new-array v1, v1, [Lzendesk/support/Guide;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lzendesk/support/Guide;->$VALUES:[Lzendesk/support/Guide;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/support/Guide;
    .locals 1

    .line 1
    const-class v0, Lzendesk/support/Guide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/support/Guide;

    return-object p0
.end method

.method public static values()[Lzendesk/support/Guide;
    .locals 1

    .line 1
    sget-object v0, Lzendesk/support/Guide;->$VALUES:[Lzendesk/support/Guide;

    invoke-virtual {v0}, [Lzendesk/support/Guide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/support/Guide;

    return-object v0
.end method


# virtual methods
.method public getHelpCenterLocaleOverride()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/Guide;->helpCenterLocaleOverride:Ljava/util/Locale;

    return-object v0
.end method

.method public guideModule()Lzendesk/support/GuideModule;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/Guide;->guideModule:Lzendesk/support/GuideModule;

    return-object v0
.end method

.method public init(Lzendesk/core/Zendesk;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/Guide;->helpCenterTracker:Lzendesk/support/HelpCenterTracker;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lzendesk/support/HelpCenterTracker$DefaultTracker;

    invoke-direct {v0}, Lzendesk/support/HelpCenterTracker$DefaultTracker;-><init>()V

    iput-object v0, p0, Lzendesk/support/Guide;->helpCenterTracker:Lzendesk/support/HelpCenterTracker;

    .line 3
    :cond_0
    invoke-virtual {p1}, Lzendesk/core/Zendesk;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lzendesk/core/Zendesk;->coreModule()Lzendesk/core/CoreModule;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzendesk/support/Guide;->initApplicationScope(Lzendesk/core/CoreModule;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lzendesk/support/Guide;->initialized:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Guide"

    const-string v1, "Cannot use Guide SDK without initializing Zendesk. Call Zendesk.INSTANCE.init(...)"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/tk2;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public initApplicationScope(Lzendesk/core/CoreModule;)V
    .locals 2

    .line 1
    invoke-static {}, Lzendesk/support/DaggerGuideSdkProvidersComponent;->builder()Lzendesk/support/DaggerGuideSdkProvidersComponent$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lzendesk/support/DaggerGuideSdkProvidersComponent$Builder;->coreModule(Lzendesk/core/CoreModule;)Lzendesk/support/DaggerGuideSdkProvidersComponent$Builder;

    move-result-object p1

    new-instance v0, Lzendesk/support/GuideProviderModule;

    iget-object v1, p0, Lzendesk/support/Guide;->helpCenterTracker:Lzendesk/support/HelpCenterTracker;

    invoke-direct {v0, v1}, Lzendesk/support/GuideProviderModule;-><init>(Lzendesk/support/HelpCenterTracker;)V

    .line 3
    invoke-virtual {p1, v0}, Lzendesk/support/DaggerGuideSdkProvidersComponent$Builder;->guideProviderModule(Lzendesk/support/GuideProviderModule;)Lzendesk/support/DaggerGuideSdkProvidersComponent$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lzendesk/support/DaggerGuideSdkProvidersComponent$Builder;->build()Lzendesk/support/GuideSdkProvidersComponent;

    move-result-object p1

    .line 5
    invoke-interface {p1, p0}, Lzendesk/support/GuideSdkProvidersComponent;->inject(Lzendesk/support/Guide;)Lzendesk/support/Guide;

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/Guide;->initialized:Z

    return v0
.end method
