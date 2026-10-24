.class public final Lcom/shabakaty/downloader/yk6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:J

.field public final synthetic s:Lcom/shabakaty/downloader/wu4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wu4;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yk6;->s:Lcom/shabakaty/downloader/wu4;

    iput-wide p2, p0, Lcom/shabakaty/downloader/yk6;->r:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/yk6;->s:Lcom/shabakaty/downloader/wu4;

    iget-wide v0, p0, Lcom/shabakaty/downloader/yk6;->r:J

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wu4;->m()Lcom/shabakaty/downloader/br3;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wu4;->m()Lcom/shabakaty/downloader/br3;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wu4;->m()Lcom/shabakaty/downloader/br3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wu4;->m()Lcom/shabakaty/downloader/br3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/br3;->o()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/shabakaty/downloader/br3;->b()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iget-object p1, p1, Lcom/shabakaty/downloader/wu4;->e:Lcom/shabakaty/downloader/de5;

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/de5;->e()I

    move-result v0

    int-to-long v0, v0

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/de5;->g()J

    move-result-wide v5

    add-long/2addr v5, v0

    .line 10
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 11
    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/br3;->s(J)Lcom/shabakaty/downloader/nb3;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v2}, Lcom/shabakaty/downloader/br3;->b()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/br3;->s(J)Lcom/shabakaty/downloader/nb3;

    :cond_1
    :goto_0
    return-void
.end method
