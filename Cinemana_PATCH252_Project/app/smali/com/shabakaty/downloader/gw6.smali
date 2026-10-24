.class public final Lcom/shabakaty/downloader/gw6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/m76;
.implements Lcom/shabakaty/downloader/xy6;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/uw6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uw6;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/gw6;->r:Lcom/shabakaty/downloader/uw6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/gw6;->r:Lcom/shabakaty/downloader/uw6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/shabakaty/downloader/gw6;->r:Lcom/shabakaty/downloader/uw6;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string p2, "AppId not known when logging event"

    const-string p3, "_err"

    .line 5
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/gw6;->r:Lcom/shabakaty/downloader/uw6;

    .line 6
    invoke-virtual {p2}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object p2

    new-instance v0, Lcom/shabakaty/downloader/em6;

    invoke-direct {v0, p0, p1, p3}, Lcom/shabakaty/downloader/em6;-><init>(Lcom/shabakaty/downloader/gw6;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/gw6;->r:Lcom/shabakaty/downloader/uw6;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/uw6;->i(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
