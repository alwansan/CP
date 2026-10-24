.class public final Lcom/shabakaty/downloader/u93$b;
.super Ljava/lang/Object;
.source "PackageViewDescriptorFactory.kt"

# interfaces
.implements Lcom/shabakaty/downloader/u93;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/u93;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/u93$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/u93$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/u93$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/u93$b;->b:Lcom/shabakaty/downloader/u93$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/qu2;Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/md4;)Lcom/shabakaty/downloader/t93;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/og2;

    invoke-direct {v0, p1, p2, p3}, Lcom/shabakaty/downloader/og2;-><init>(Lcom/shabakaty/downloader/qu2;Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/md4;)V

    return-object v0
.end method
