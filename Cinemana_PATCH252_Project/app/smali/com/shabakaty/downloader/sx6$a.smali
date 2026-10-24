.class public final Lcom/shabakaty/downloader/sx6$a;
.super Lcom/shabakaty/downloader/b37$b;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/h77;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/sx6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/b37$b<",
        "Lcom/shabakaty/downloader/sx6;",
        "Lcom/shabakaty/downloader/sx6$a;",
        ">;",
        "Lcom/shabakaty/downloader/h77;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/sx6;->v()Lcom/shabakaty/downloader/sx6;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/b37$b;-><init>(Lcom/shabakaty/downloader/b37;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/yw6;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/sx6;->v()Lcom/shabakaty/downloader/sx6;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/b37$b;-><init>(Lcom/shabakaty/downloader/b37;)V

    return-void
.end method


# virtual methods
.method public final m(I)Lcom/shabakaty/downloader/sx6$a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/b37$b;->t:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/b37$b;->j()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/b37$b;->t:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    check-cast v0, Lcom/shabakaty/downloader/sx6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/sx6;->o(Lcom/shabakaty/downloader/sx6;I)V

    return-object p0
.end method
