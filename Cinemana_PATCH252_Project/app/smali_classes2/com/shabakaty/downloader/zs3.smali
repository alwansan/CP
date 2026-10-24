.class public final Lcom/shabakaty/downloader/zs3;
.super Lcom/shabakaty/downloader/ys3;
.source "ResponseBody.kt"


# instance fields
.field public final synthetic t:Lcom/shabakaty/downloader/eo;

.field public final synthetic u:Lcom/shabakaty/downloader/fr2;

.field public final synthetic v:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/eo;Lcom/shabakaty/downloader/fr2;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zs3;->t:Lcom/shabakaty/downloader/eo;

    iput-object p2, p0, Lcom/shabakaty/downloader/zs3;->u:Lcom/shabakaty/downloader/fr2;

    iput-wide p3, p0, Lcom/shabakaty/downloader/zs3;->v:J

    invoke-direct {p0}, Lcom/shabakaty/downloader/ys3;-><init>()V

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/zs3;->v:J

    return-wide v0
.end method

.method public d()Lcom/shabakaty/downloader/fr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zs3;->u:Lcom/shabakaty/downloader/fr2;

    return-object v0
.end method

.method public f()Lcom/shabakaty/downloader/eo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zs3;->t:Lcom/shabakaty/downloader/eo;

    return-object v0
.end method
