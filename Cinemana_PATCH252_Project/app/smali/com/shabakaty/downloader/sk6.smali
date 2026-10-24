.class public final synthetic Lcom/shabakaty/downloader/sk6;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"

# interfaces
.implements Lcom/shabakaty/downloader/t80;


# static fields
.field public static final a:Lcom/shabakaty/downloader/t80;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/sk6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/sk6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/sk6;->a:Lcom/shabakaty/downloader/t80;

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

    new-instance v0, Lcom/shabakaty/downloader/gr3$a;

    const-class v1, Lcom/shabakaty/downloader/ah0;

    const-class v2, Lcom/shabakaty/downloader/ag6;

    .line 1
    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/q80;->b(Ljava/lang/Class;)Lcom/shabakaty/downloader/pj3;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/gr3$a;-><init>(Ljava/lang/Class;Lcom/shabakaty/downloader/pj3;)V

    return-object v0
.end method
