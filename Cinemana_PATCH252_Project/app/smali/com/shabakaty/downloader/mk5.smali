.class public final Lcom/shabakaty/downloader/mk5;
.super Lcom/shabakaty/downloader/br3$g;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/pq2;

.field public final synthetic s:Lcom/shabakaty/downloader/br3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/br3;Lcom/shabakaty/downloader/pq2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/mk5;->s:Lcom/shabakaty/downloader/br3;

    iput-object p2, p0, Lcom/shabakaty/downloader/mk5;->r:Lcom/shabakaty/downloader/pq2;

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/br3$g;-><init>(Lcom/shabakaty/downloader/br3;Z)V

    return-void
.end method


# virtual methods
.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mk5;->s:Lcom/shabakaty/downloader/br3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->c:Lcom/shabakaty/downloader/oh5;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/br3$g;->o:Lcom/shabakaty/downloader/pj5;

    iget-object v2, p0, Lcom/shabakaty/downloader/mk5;->r:Lcom/shabakaty/downloader/pq2;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/oh5;->k(Lcom/shabakaty/downloader/pj5;Lcom/shabakaty/downloader/pq2;)J

    return-void
.end method
