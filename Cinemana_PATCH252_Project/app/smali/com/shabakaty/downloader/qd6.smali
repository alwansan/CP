.class public final Lcom/shabakaty/downloader/qd6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/l43;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l43<",
        "Lcom/shabakaty/downloader/jn6;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/qd6;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shabakaty/downloader/qd6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qd6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/qd6;->a:Lcom/shabakaty/downloader/qd6;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/u74;

    const/4 v1, 0x6

    .line 2
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {v0, v2, v0, v2, v1}, Lcom/shabakaty/downloader/p86;->a(Lcom/shabakaty/downloader/u16;Ljava/util/HashMap;Lcom/shabakaty/downloader/u16;Ljava/util/HashMap;I)Lcom/shabakaty/downloader/u74;

    move-result-object v0

    const/4 v2, 0x2

    .line 7
    iput v2, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-static {v0, v2, v0, v2, v1}, Lcom/shabakaty/downloader/p86;->a(Lcom/shabakaty/downloader/u16;Ljava/util/HashMap;Lcom/shabakaty/downloader/u16;Ljava/util/HashMap;I)Lcom/shabakaty/downloader/u74;

    move-result-object v0

    const/4 v1, 0x3

    .line 11
    iput v1, v0, Lcom/shabakaty/downloader/u74;->a:I

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u74;->f()Lcom/shabakaty/downloader/u16;

    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-static {v0, v1, v0, v1}, Lcom/shabakaty/downloader/q86;->a(Lcom/shabakaty/downloader/u16;Ljava/util/HashMap;Lcom/shabakaty/downloader/u16;Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/shabakaty/downloader/jn6;

    check-cast p2, Lcom/shabakaty/downloader/m43;

    const/4 p1, 0x0

    throw p1
.end method
