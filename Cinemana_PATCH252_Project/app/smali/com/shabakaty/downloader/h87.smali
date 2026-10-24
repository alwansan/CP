.class public final synthetic Lcom/shabakaty/downloader/h87;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"

# interfaces
.implements Lcom/shabakaty/downloader/t80;


# static fields
.field public static final a:Lcom/shabakaty/downloader/t80;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/h87;

    invoke-direct {v0}, Lcom/shabakaty/downloader/h87;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/h87;->a:Lcom/shabakaty/downloader/t80;

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
    new-instance v0, Lcom/shabakaty/downloader/d54;

    const-class v1, Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/q80;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/d54;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
