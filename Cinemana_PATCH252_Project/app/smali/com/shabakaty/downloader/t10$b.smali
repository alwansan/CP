.class public final synthetic Lcom/shabakaty/downloader/t10$b;
.super Lcom/shabakaty/downloader/co1;
.source "CinemanaVideoPlayerViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/t10;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/co1;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/t10$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/t10$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/t10$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/t10$b;->r:Lcom/shabakaty/downloader/t10$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Lcom/shabakaty/downloader/wt2;

    const/4 v1, 0x1

    const-string v3, "logE"

    const-string v4, "logE(Ljava/lang/Throwable;)V"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/co1;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "p0"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->k(Ljava/lang/Throwable;)V

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
