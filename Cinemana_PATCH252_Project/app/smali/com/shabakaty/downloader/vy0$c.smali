.class public final Lcom/shabakaty/downloader/vy0$c;
.super Lcom/shabakaty/downloader/af2;
.source "downloader.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/vy0;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/x02;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/vy0$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/vy0$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vy0$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/vy0$c;->r:Lcom/shabakaty/downloader/vy0$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/x02;->c:Lcom/shabakaty/downloader/x02$b;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/x02;->e:Lcom/shabakaty/downloader/x02;

    if-nez v1, :cond_1

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/x02;->e:Lcom/shabakaty/downloader/x02;

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/x02;->e:Lcom/shabakaty/downloader/x02;

    .line 6
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/x02;->d:Lcom/shabakaty/downloader/rm1;

    .line 8
    check-cast v1, Lcom/shabakaty/downloader/x02$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/x02$a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/x02;

    .line 9
    sput-object v1, Lcom/shabakaty/downloader/x02;->e:Lcom/shabakaty/downloader/x02;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_1
    return-object v1
.end method
