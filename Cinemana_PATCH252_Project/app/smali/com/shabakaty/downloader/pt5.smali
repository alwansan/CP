.class public final synthetic Lcom/shabakaty/downloader/pt5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/t80;


# static fields
.field public static final a:Lcom/shabakaty/downloader/t80;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/pt5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/pt5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/pt5;->a:Lcom/shabakaty/downloader/t80;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/q80;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/shabakaty/downloader/zz5;

    const-class v1, Lcom/shabakaty/downloader/g56;

    .line 1
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/g56;

    const-class v2, Lcom/shabakaty/downloader/x61;

    .line 2
    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/x61;

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/zz5;-><init>(Lcom/shabakaty/downloader/g56;Lcom/shabakaty/downloader/x61;)V

    return-object v0
.end method
