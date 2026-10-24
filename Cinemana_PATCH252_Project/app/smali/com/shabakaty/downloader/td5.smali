.class public final synthetic Lcom/shabakaty/downloader/td5;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"

# interfaces
.implements Lcom/shabakaty/downloader/t80;


# static fields
.field public static final a:Lcom/shabakaty/downloader/t80;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/td5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/td5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/td5;->a:Lcom/shabakaty/downloader/t80;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/q80;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/gu2;

    const-class v1, Lcom/shabakaty/downloader/zt2;

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/zt2;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/gu2;-><init>(Lcom/shabakaty/downloader/zt2;)V

    return-object v0
.end method
