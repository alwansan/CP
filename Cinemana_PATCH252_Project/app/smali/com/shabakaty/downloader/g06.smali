.class public final Lcom/shabakaty/downloader/g06;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/wu4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wu4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/g06;->r:Lcom/shabakaty/downloader/wu4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g06;->r:Lcom/shabakaty/downloader/wu4;

    check-cast p1, Landroid/widget/ImageView;

    .line 2
    iget-object p1, v0, Lcom/shabakaty/downloader/wu4;->a:Landroid/app/Activity;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/tw;->d(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/tw;->c()Lcom/shabakaty/downloader/y14;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/y14;->c()Lcom/shabakaty/downloader/xw;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/s14;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xw;->l()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/xw;->m(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 9
    :goto_1
    sget-object v2, Lcom/shabakaty/downloader/wu4;->h:Lcom/shabakaty/downloader/pk2;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 10
    iget-object p1, v2, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v1, "Unable to call CastSession.setMute(boolean)."

    invoke-virtual {v2, v1, v0}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method
