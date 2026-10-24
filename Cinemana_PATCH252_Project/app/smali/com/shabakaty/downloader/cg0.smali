.class public final synthetic Lcom/shabakaty/downloader/cg0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/np0$a;


# instance fields
.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:J

.field public final synthetic u:Lcom/shabakaty/downloader/sc4;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/shabakaty/downloader/sc4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/cg0;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/cg0;->s:Ljava/lang/String;

    iput-wide p3, p0, Lcom/shabakaty/downloader/cg0;->t:J

    iput-object p5, p0, Lcom/shabakaty/downloader/cg0;->u:Lcom/shabakaty/downloader/sc4;

    return-void
.end method


# virtual methods
.method public final e(Lcom/shabakaty/downloader/pj3;)V
    .locals 6

    iget-object v1, p0, Lcom/shabakaty/downloader/cg0;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/cg0;->s:Ljava/lang/String;

    iget-wide v3, p0, Lcom/shabakaty/downloader/cg0;->t:J

    iget-object v5, p0, Lcom/shabakaty/downloader/cg0;->u:Lcom/shabakaty/downloader/sc4;

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/pj3;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/bg0;

    invoke-interface/range {v0 .. v5}, Lcom/shabakaty/downloader/bg0;->d(Ljava/lang/String;Ljava/lang/String;JLcom/shabakaty/downloader/sc4;)V

    return-void
.end method
