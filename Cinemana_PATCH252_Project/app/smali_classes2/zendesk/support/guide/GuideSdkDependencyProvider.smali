.class public final enum Lzendesk/support/guide/GuideSdkDependencyProvider;
.super Ljava/lang/Enum;
.source "GuideSdkDependencyProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/support/guide/GuideSdkDependencyProvider;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lzendesk/support/guide/GuideSdkDependencyProvider;

.field public static final enum INSTANCE:Lzendesk/support/guide/GuideSdkDependencyProvider;


# instance fields
.field public actionHandler:Lzendesk/core/ActionHandler;

.field public guideSdkComponent:Lzendesk/support/guide/GuideSdkComponent;

.field public id:Ljava/util/UUID;

.field public registry:Lzendesk/core/ActionHandlerRegistry;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/guide/GuideSdkDependencyProvider;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/support/guide/GuideSdkDependencyProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/support/guide/GuideSdkDependencyProvider;->INSTANCE:Lzendesk/support/guide/GuideSdkDependencyProvider;

    const/4 v1, 0x1

    new-array v1, v1, [Lzendesk/support/guide/GuideSdkDependencyProvider;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lzendesk/support/guide/GuideSdkDependencyProvider;->$VALUES:[Lzendesk/support/guide/GuideSdkDependencyProvider;

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

.method public static valueOf(Ljava/lang/String;)Lzendesk/support/guide/GuideSdkDependencyProvider;
    .locals 1

    .line 1
    const-class v0, Lzendesk/support/guide/GuideSdkDependencyProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/support/guide/GuideSdkDependencyProvider;

    return-object p0
.end method

.method public static values()[Lzendesk/support/guide/GuideSdkDependencyProvider;
    .locals 1

    .line 1
    sget-object v0, Lzendesk/support/guide/GuideSdkDependencyProvider;->$VALUES:[Lzendesk/support/guide/GuideSdkDependencyProvider;

    invoke-virtual {v0}, [Lzendesk/support/guide/GuideSdkDependencyProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/support/guide/GuideSdkDependencyProvider;

    return-object v0
.end method


# virtual methods
.method public isInitialized()Z
    .locals 1

    .line 1
    sget-object v0, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    invoke-virtual {v0}, Lzendesk/core/Zendesk;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lzendesk/support/Guide;->INSTANCE:Lzendesk/support/Guide;

    .line 2
    invoke-virtual {v0}, Lzendesk/support/Guide;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public provideGuideSdkComponent()Lzendesk/support/guide/GuideSdkComponent;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    sget-object v0, Lzendesk/support/Guide;->INSTANCE:Lzendesk/support/Guide;

    invoke-virtual {v0}, Lzendesk/support/Guide;->guideModule()Lzendesk/support/GuideModule;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lzendesk/support/GuideModule;->getId()Ljava/util/UUID;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lzendesk/support/guide/GuideSdkDependencyProvider;->id:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lzendesk/support/guide/DaggerGuideSdkComponent;->builder()Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;

    move-result-object v1

    sget-object v2, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    .line 5
    invoke-virtual {v2}, Lzendesk/core/Zendesk;->coreModule()Lzendesk/core/CoreModule;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;->coreModule(Lzendesk/core/CoreModule;)Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;->guideModule(Lzendesk/support/GuideModule;)Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;->build()Lzendesk/support/guide/GuideSdkComponent;

    move-result-object v1

    iput-object v1, p0, Lzendesk/support/guide/GuideSdkDependencyProvider;->guideSdkComponent:Lzendesk/support/guide/GuideSdkComponent;

    .line 8
    invoke-virtual {v0}, Lzendesk/support/GuideModule;->getId()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/guide/GuideSdkDependencyProvider;->id:Ljava/util/UUID;

    .line 9
    iget-object v0, p0, Lzendesk/support/guide/GuideSdkDependencyProvider;->guideSdkComponent:Lzendesk/support/guide/GuideSdkComponent;

    invoke-interface {v0, p0}, Lzendesk/support/guide/GuideSdkComponent;->inject(Lzendesk/support/guide/GuideSdkDependencyProvider;)V

    .line 10
    iget-object v0, p0, Lzendesk/support/guide/GuideSdkDependencyProvider;->registry:Lzendesk/core/ActionHandlerRegistry;

    iget-object v1, p0, Lzendesk/support/guide/GuideSdkDependencyProvider;->actionHandler:Lzendesk/core/ActionHandler;

    invoke-interface {v0, v1}, Lzendesk/core/ActionHandlerRegistry;->add(Lzendesk/core/ActionHandler;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/GuideSdkDependencyProvider;->guideSdkComponent:Lzendesk/support/guide/GuideSdkComponent;

    return-object v0
.end method
