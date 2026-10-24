.class public final Lcom/shabakaty/downloader/fy1$d;
.super Ljava/lang/Object;
.source "ImageAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/fy1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/ky1;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 2
    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/fy1$c;

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/fy1$c;-><init>(Lcom/shabakaty/downloader/yv2;)V

    .line 5
    sget-object v4, Lcom/shabakaty/downloader/dz1;->e:Lcom/shabakaty/downloader/o90$a;

    .line 6
    sget-object v5, Lcom/shabakaty/downloader/o90$c;->t:Lcom/shabakaty/downloader/o90$c;

    invoke-virtual {v3, v4, v5, v0}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/dz1;->f:Lcom/shabakaty/downloader/o90$a;

    .line 8
    invoke-virtual {v3, v0, v5, v1}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/hx4;->o:Lcom/shabakaty/downloader/o90$a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 10
    invoke-virtual {v3, v0, v5, v1}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/dz1;->b:Lcom/shabakaty/downloader/o90$a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 12
    invoke-virtual {v3, v0, v5, v1}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2}, Lcom/shabakaty/downloader/fy1$c;->e()Lcom/shabakaty/downloader/ky1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/fy1$d;->a:Lcom/shabakaty/downloader/ky1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
