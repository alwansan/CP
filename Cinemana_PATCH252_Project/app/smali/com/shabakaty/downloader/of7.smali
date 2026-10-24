.class public final synthetic Lcom/shabakaty/downloader/of7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/kh4;


# static fields
.field public static final r:Lcom/shabakaty/downloader/kh4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/of7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/of7;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/of7;->r:Lcom/shabakaty/downloader/kh4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;
    .locals 1

    check-cast p1, Landroid/os/Bundle;

    sget v0, Lcom/shabakaty/downloader/ou3;->h:I

    if-eqz p1, :cond_0

    const-string v0, "google.messenger"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    :goto_1
    return-object p1
.end method
