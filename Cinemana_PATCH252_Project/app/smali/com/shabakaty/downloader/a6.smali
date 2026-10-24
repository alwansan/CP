.class public final synthetic Lcom/shabakaty/downloader/a6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/t6$a;

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:J


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/a6;->r:Lcom/shabakaty/downloader/t6$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/a6;->s:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/shabakaty/downloader/a6;->t:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/a6;->r:Lcom/shabakaty/downloader/t6$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/a6;->s:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/shabakaty/downloader/a6;->t:J

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 1
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/shabakaty/downloader/t6;->e(Lcom/shabakaty/downloader/t6$a;Ljava/lang/Object;J)V

    return-void
.end method
