.class Lcom/connectsdk/service/upnp/DLNAHttpServer$1;
.super Ljava/lang/Object;
.source "DLNAHttpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/upnp/DLNAHttpServer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/upnp/DLNAHttpServer;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/upnp/DLNAHttpServer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/upnp/DLNAHttpServer$1;->this$0:Lcom/connectsdk/service/upnp/DLNAHttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/upnp/DLNAHttpServer$1;->this$0:Lcom/connectsdk/service/upnp/DLNAHttpServer;

    invoke-static {v0}, Lcom/connectsdk/service/upnp/DLNAHttpServer;->access$000(Lcom/connectsdk/service/upnp/DLNAHttpServer;)V

    return-void
.end method
