.class public final Lcom/shabakaty/downloader/vy0$b;
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
        "Lcom/shabakaty/downloader/i44;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/vy0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/vy0$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vy0$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/vy0$b;->r:Lcom/shabakaty/downloader/vy0$b;

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
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->a()Lcom/shabakaty/downloader/ey0;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/vy0;->a:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/x02;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/x02;->a:Lcom/shabakaty/downloader/i44;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/xy0;->r:Lcom/shabakaty/downloader/xy0;

    throw v0

    :cond_3
    :goto_2
    return-object v0
.end method
