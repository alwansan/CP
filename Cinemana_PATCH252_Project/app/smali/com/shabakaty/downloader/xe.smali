.class public final synthetic Lcom/shabakaty/downloader/xe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ye$a;

.field public final synthetic s:J


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ye$a;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/xe;->r:Lcom/shabakaty/downloader/ye$a;

    iput-wide p2, p0, Lcom/shabakaty/downloader/xe;->s:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/xe;->r:Lcom/shabakaty/downloader/ye$a;

    iget-wide v1, p0, Lcom/shabakaty/downloader/xe;->s:J

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/ye$a;->b:Lcom/shabakaty/downloader/ye;

    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/ye;->Y(J)V

    return-void
.end method
