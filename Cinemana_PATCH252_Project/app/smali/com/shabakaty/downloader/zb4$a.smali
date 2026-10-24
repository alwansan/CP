.class public Lcom/shabakaty/downloader/zb4$a;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Lcom/shabakaty/downloader/vz3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/zb4;->d(Lcom/shabakaty/downloader/vz3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/vz3;

.field public final synthetic b:Lcom/shabakaty/downloader/zb4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zb4;Lcom/shabakaty/downloader/vz3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zb4$a;->b:Lcom/shabakaty/downloader/zb4;

    iput-object p2, p0, Lcom/shabakaty/downloader/zb4$a;->a:Lcom/shabakaty/downloader/vz3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zb4$a;->a:Lcom/shabakaty/downloader/vz3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/vz3;->e()Z

    move-result v0

    return v0
.end method

.method public i(J)Lcom/shabakaty/downloader/vz3$a;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zb4$a;->a:Lcom/shabakaty/downloader/vz3;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/vz3;->i(J)Lcom/shabakaty/downloader/vz3$a;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/vz3$a;

    new-instance v0, Lcom/shabakaty/downloader/xz3;

    iget-object v1, p1, Lcom/shabakaty/downloader/vz3$a;->a:Lcom/shabakaty/downloader/xz3;

    iget-wide v2, v1, Lcom/shabakaty/downloader/xz3;->a:J

    iget-wide v4, v1, Lcom/shabakaty/downloader/xz3;->b:J

    iget-object v1, p0, Lcom/shabakaty/downloader/zb4$a;->b:Lcom/shabakaty/downloader/zb4;

    .line 3
    iget-wide v6, v1, Lcom/shabakaty/downloader/zb4;->r:J

    add-long/2addr v4, v6

    .line 4
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/shabakaty/downloader/xz3;-><init>(JJ)V

    new-instance v1, Lcom/shabakaty/downloader/xz3;

    iget-object p1, p1, Lcom/shabakaty/downloader/vz3$a;->b:Lcom/shabakaty/downloader/xz3;

    iget-wide v2, p1, Lcom/shabakaty/downloader/xz3;->a:J

    iget-wide v4, p1, Lcom/shabakaty/downloader/xz3;->b:J

    add-long/2addr v4, v6

    .line 5
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/shabakaty/downloader/xz3;-><init>(JJ)V

    invoke-direct {p2, v0, v1}, Lcom/shabakaty/downloader/vz3$a;-><init>(Lcom/shabakaty/downloader/xz3;Lcom/shabakaty/downloader/xz3;)V

    return-object p2
.end method

.method public j()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zb4$a;->a:Lcom/shabakaty/downloader/vz3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/vz3;->j()J

    move-result-wide v0

    return-wide v0
.end method
