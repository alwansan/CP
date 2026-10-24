.class public final Lcom/shabakaty/downloader/j41;
.super Ljava/lang/Throwable;
.source "Throwables.kt"


# static fields
.field public static final r:Lcom/shabakaty/downloader/j41;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/j41;

    invoke-direct {v0}, Lcom/shabakaty/downloader/j41;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/j41;->r:Lcom/shabakaty/downloader/j41;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "Epom not initialized, call "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/shabakaty/downloader/e41;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method
