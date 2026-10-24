.class public final Lcom/shabakaty/downloader/wz5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/gb$a;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/e56;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/e56;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wz5;->a:Lcom/shabakaty/downloader/e56;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 0

    iget-object p1, p0, Lcom/shabakaty/downloader/wz5;->a:Lcom/shabakaty/downloader/e56;

    iget-object p1, p1, Lcom/shabakaty/downloader/e56;->a:Ljava/util/Set;

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 2
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3
    sget-object p3, Lcom/shabakaty/downloader/nt5;->a:Ljava/util/Set;

    .line 4
    invoke-static {p2}, Lcom/shabakaty/downloader/yi6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    move-object p2, p3

    :cond_1
    const-string p3, "events"

    .line 5
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/downloader/wz5;->a:Lcom/shabakaty/downloader/e56;

    .line 6
    iget-object p2, p2, Lcom/shabakaty/downloader/e56;->b:Lcom/shabakaty/downloader/l6$b;

    const/4 p3, 0x2

    .line 7
    check-cast p2, Lcom/shabakaty/downloader/gf0;

    invoke-virtual {p2, p3, p1}, Lcom/shabakaty/downloader/gf0;->a(ILandroid/os/Bundle;)V

    return-void
.end method
