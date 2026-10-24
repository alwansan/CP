.class public Lzendesk/messaging/MessagingConfiguration;
.super Ljava/lang/Object;
.source "MessagingConfiguration.java"

# interfaces
.implements Lcom/shabakaty/downloader/z90;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/MessagingConfiguration$Builder;
    }
.end annotation


# instance fields
.field public botAgentDetails:Lzendesk/messaging/AgentDetails;

.field public final botAvatarDrawable:I

.field public final botLabelString:Ljava/lang/String;

.field public final botLabelStringRes:I

.field public final configurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/z90;",
            ">;"
        }
    .end annotation
.end field

.field public final engineRegistryKey:Ljava/lang/String;

.field public final multilineResponseOptionsEnabled:Z

.field public final toolbarTitle:Ljava/lang/String;

.field public final toolbarTitleRes:I


# direct methods
.method public constructor <init>(Lzendesk/messaging/MessagingConfiguration$Builder;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lzendesk/messaging/MessagingConfiguration$Builder;->access$000(Lzendesk/messaging/MessagingConfiguration$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/MessagingConfiguration;->configurations:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lzendesk/messaging/MessagingConfiguration;->engineRegistryKey:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lzendesk/messaging/MessagingConfiguration$Builder;->access$100(Lzendesk/messaging/MessagingConfiguration$Builder;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lzendesk/messaging/MessagingConfiguration;->toolbarTitle:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lzendesk/messaging/MessagingConfiguration$Builder;->access$200(Lzendesk/messaging/MessagingConfiguration$Builder;)I

    move-result p2

    iput p2, p0, Lzendesk/messaging/MessagingConfiguration;->toolbarTitleRes:I

    .line 7
    invoke-static {p1}, Lzendesk/messaging/MessagingConfiguration$Builder;->access$300(Lzendesk/messaging/MessagingConfiguration$Builder;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lzendesk/messaging/MessagingConfiguration;->botLabelString:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lzendesk/messaging/MessagingConfiguration$Builder;->access$400(Lzendesk/messaging/MessagingConfiguration$Builder;)I

    move-result p2

    iput p2, p0, Lzendesk/messaging/MessagingConfiguration;->botLabelStringRes:I

    .line 9
    invoke-static {p1}, Lzendesk/messaging/MessagingConfiguration$Builder;->access$500(Lzendesk/messaging/MessagingConfiguration$Builder;)I

    move-result p2

    iput p2, p0, Lzendesk/messaging/MessagingConfiguration;->botAvatarDrawable:I

    .line 10
    invoke-static {p1}, Lzendesk/messaging/MessagingConfiguration$Builder;->access$600(Lzendesk/messaging/MessagingConfiguration$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lzendesk/messaging/MessagingConfiguration;->multilineResponseOptionsEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Lzendesk/messaging/MessagingConfiguration$Builder;Ljava/lang/String;Lzendesk/messaging/MessagingConfiguration$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/messaging/MessagingConfiguration;-><init>(Lzendesk/messaging/MessagingConfiguration$Builder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBotAgentDetails(Landroid/content/res/Resources;)Lzendesk/messaging/AgentDetails;
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/messaging/MessagingConfiguration;->botAgentDetails:Lzendesk/messaging/AgentDetails;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lzendesk/messaging/AgentDetails;

    .line 3
    invoke-virtual {p0, p1}, Lzendesk/messaging/MessagingConfiguration;->getBotLabelString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    iget v2, p0, Lzendesk/messaging/MessagingConfiguration;->botAvatarDrawable:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ANSWER_BOT"

    invoke-direct {v0, p1, v3, v1, v2}, Lzendesk/messaging/AgentDetails;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;)V

    iput-object v0, p0, Lzendesk/messaging/MessagingConfiguration;->botAgentDetails:Lzendesk/messaging/AgentDetails;

    .line 4
    :cond_0
    iget-object p1, p0, Lzendesk/messaging/MessagingConfiguration;->botAgentDetails:Lzendesk/messaging/AgentDetails;

    return-object p1
.end method

.method public final getBotLabelString(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/messaging/MessagingConfiguration;->botLabelString:Ljava/lang/String;

    invoke-static {v0}, Lcom/shabakaty/downloader/fe4;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lzendesk/messaging/MessagingConfiguration;->botLabelString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget v0, p0, Lzendesk/messaging/MessagingConfiguration;->botLabelStringRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getConfigurations()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/z90;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/messaging/MessagingConfiguration;->configurations:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/z90;

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    .line 6
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method public getEngines()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lzendesk/messaging/EngineListRegistry;->INSTANCE:Lzendesk/messaging/EngineListRegistry;

    iget-object v1, p0, Lzendesk/messaging/MessagingConfiguration;->engineRegistryKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzendesk/messaging/EngineListRegistry;->retrieveEngineList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/messaging/MessagingConfiguration;->toolbarTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/shabakaty/downloader/fe4;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lzendesk/messaging/MessagingConfiguration;->toolbarTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget v0, p0, Lzendesk/messaging/MessagingConfiguration;->toolbarTitleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public isMultilineResponseOptionsEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/messaging/MessagingConfiguration;->multilineResponseOptionsEnabled:Z

    return v0
.end method
