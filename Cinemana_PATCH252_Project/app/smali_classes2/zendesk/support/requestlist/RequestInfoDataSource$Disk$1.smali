.class Lzendesk/support/requestlist/RequestInfoDataSource$Disk$1;
.super Ljava/lang/Object;
.source "RequestInfoDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/requestlist/RequestInfoDataSource$Disk;->load(Lcom/shabakaty/downloader/n95;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lzendesk/support/requestlist/RequestInfoDataSource$Disk;

.field public final synthetic val$callback:Lcom/shabakaty/downloader/n95;


# direct methods
.method public constructor <init>(Lzendesk/support/requestlist/RequestInfoDataSource$Disk;Lcom/shabakaty/downloader/n95;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$1;->this$0:Lzendesk/support/requestlist/RequestInfoDataSource$Disk;

    iput-object p2, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$1;->val$callback:Lcom/shabakaty/downloader/n95;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$1$1;

    invoke-direct {v0, p0}, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$1$1;-><init>(Lzendesk/support/requestlist/RequestInfoDataSource$Disk$1;)V

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cu4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$1;->this$0:Lzendesk/support/requestlist/RequestInfoDataSource$Disk;

    invoke-static {v1}, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;->access$300(Lzendesk/support/requestlist/RequestInfoDataSource$Disk;)Lzendesk/support/SupportUiStorage;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$1;->this$0:Lzendesk/support/requestlist/RequestInfoDataSource$Disk;

    invoke-static {v2}, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;->access$200(Lzendesk/support/requestlist/RequestInfoDataSource$Disk;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lzendesk/support/SupportUiStorage;->read(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    iget-object v1, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$1;->this$0:Lzendesk/support/requestlist/RequestInfoDataSource$Disk;

    invoke-static {v1}, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;->access$400(Lzendesk/support/requestlist/RequestInfoDataSource$Disk;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$1$2;

    invoke-direct {v2, p0, v0}, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$1$2;-><init>(Lzendesk/support/requestlist/RequestInfoDataSource$Disk$1;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
