.class public final Lcom/shabakaty/downloader/da6;
.super Lcom/shabakaty/downloader/lu6;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/lu6<",
        "Lcom/shabakaty/downloader/za6;",
        "Lcom/shabakaty/downloader/da6;",
        ">;",
        "Lcom/shabakaty/downloader/r07;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/za6;->t()Lcom/shabakaty/downloader/za6;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/lu6;-><init>(Lcom/shabakaty/downloader/uu6;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ol3;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/za6;->t()Lcom/shabakaty/downloader/za6;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/lu6;-><init>(Lcom/shabakaty/downloader/uu6;)V

    return-void
.end method


# virtual methods
.method public final m()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/za6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/za6;->s()I

    move-result v0

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/za6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/za6;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
