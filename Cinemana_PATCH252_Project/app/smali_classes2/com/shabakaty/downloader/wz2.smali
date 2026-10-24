.class public final Lcom/shabakaty/downloader/wz2;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ou0;
.implements Lcom/shabakaty/downloader/qz;


# static fields
.field public static final r:Lcom/shabakaty/downloader/wz2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wz2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wz2;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/wz2;->r:Lcom/shabakaty/downloader/wz2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 0

    return-void
.end method

.method public n(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
