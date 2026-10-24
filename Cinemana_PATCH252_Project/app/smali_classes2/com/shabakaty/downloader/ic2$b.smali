.class public final synthetic Lcom/shabakaty/downloader/ic2$b;
.super Ljava/lang/Object;
.source "KClassImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ic2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/shabakaty/downloader/be2$a;->values()[Lcom/shabakaty/downloader/be2$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/shabakaty/downloader/be2$a;->v:Lcom/shabakaty/downloader/be2$a;

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v3, Lcom/shabakaty/downloader/be2$a;->x:Lcom/shabakaty/downloader/be2$a;

    const/4 v3, 0x4

    aput v1, v0, v3

    sget-object v1, Lcom/shabakaty/downloader/be2$a;->y:Lcom/shabakaty/downloader/be2$a;

    const/4 v1, 0x5

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v5, Lcom/shabakaty/downloader/be2$a;->w:Lcom/shabakaty/downloader/be2$a;

    aput v3, v0, v4

    sget-object v3, Lcom/shabakaty/downloader/be2$a;->t:Lcom/shabakaty/downloader/be2$a;

    const/4 v3, 0x0

    aput v1, v0, v3

    sget-object v1, Lcom/shabakaty/downloader/be2$a;->u:Lcom/shabakaty/downloader/be2$a;

    const/4 v1, 0x6

    aput v1, v0, v2

    sput-object v0, Lcom/shabakaty/downloader/ic2$b;->a:[I

    return-void
.end method
