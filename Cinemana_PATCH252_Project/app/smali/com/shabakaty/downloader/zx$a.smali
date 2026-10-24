.class public final Lcom/shabakaty/downloader/zx$a;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/shabakaty/downloader/zx$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/shabakaty/downloader/vg0;

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/z84;->s:Lcom/shabakaty/downloader/z84;

    sput-object v0, Lcom/shabakaty/downloader/zx$a;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p9, :cond_0

    const/4 v1, 0x1

    move/from16 v18, p10

    const/16 v17, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    const/16 v17, 0x0

    const/high16 v18, -0x1000000

    .line 2
    :goto_0
    new-instance v1, Lcom/shabakaty/downloader/vg0;

    move-object v3, v1

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/4 v7, 0x0

    move-object v6, v7

    const/high16 v13, -0x80000000

    move/from16 v19, v13

    const v14, -0x800001

    move/from16 v16, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v15, p8

    invoke-direct/range {v3 .. v21}, Lcom/shabakaty/downloader/vg0;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/shabakaty/downloader/vg0$a;)V

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/zx$a;->a:Lcom/shabakaty/downloader/vg0;

    move/from16 v1, p11

    .line 4
    iput v1, v0, Lcom/shabakaty/downloader/zx$a;->b:I

    return-void
.end method
