.class public final enum Lcom/shabakaty/downloader/tk6;
.super Ljava/lang/Enum;
.source "com.google.mlkit:common@@17.1.1"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/tk6;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/tk6;

.field public static final synthetic s:[Lcom/shabakaty/downloader/tk6;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shabakaty/downloader/tk6;

    .line 1
    invoke-direct {v0}, Lcom/shabakaty/downloader/tk6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/tk6;->r:Lcom/shabakaty/downloader/tk6;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/shabakaty/downloader/tk6;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/shabakaty/downloader/tk6;->s:[Lcom/shabakaty/downloader/tk6;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/shabakaty/downloader/tk6;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/tk6;->s:[Lcom/shabakaty/downloader/tk6;

    .line 1
    invoke-virtual {v0}, [Lcom/shabakaty/downloader/tk6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/tk6;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/ul2;->a()Lcom/shabakaty/downloader/ul2;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ul2;->a:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
