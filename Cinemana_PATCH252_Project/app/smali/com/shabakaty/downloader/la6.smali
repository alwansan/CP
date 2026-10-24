.class public final Lcom/shabakaty/downloader/la6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/gb$a;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/yf6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yf6;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/la6;->a:Lcom/shabakaty/downloader/yf6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "crash"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/nt5;->a:Ljava/util/Set;

    .line 3
    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Landroid/os/Bundle;

    .line 5
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "name"

    .line 6
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "timestampInMillis"

    .line 7
    invoke-virtual {p1, p2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "params"

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/shabakaty/downloader/la6;->a:Lcom/shabakaty/downloader/yf6;

    .line 9
    iget-object p2, p2, Lcom/shabakaty/downloader/yf6;->a:Lcom/shabakaty/downloader/l6$b;

    const/4 p3, 0x3

    .line 10
    check-cast p2, Lcom/shabakaty/downloader/gf0;

    invoke-virtual {p2, p3, p1}, Lcom/shabakaty/downloader/gf0;->a(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
