.class public final Lcom/shabakaty/downloader/lv;
.super Ljava/lang/Object;
.source "CaptionStyleCompat.java"


# static fields
.field public static final g:Lcom/shabakaty/downloader/lv;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Landroid/graphics/Typeface;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/lv;

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/lv;-><init>(IIIIILandroid/graphics/Typeface;)V

    sput-object v7, Lcom/shabakaty/downloader/lv;->g:Lcom/shabakaty/downloader/lv;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/graphics/Typeface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/lv;->a:I

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/lv;->b:I

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/lv;->c:I

    .line 5
    iput p4, p0, Lcom/shabakaty/downloader/lv;->d:I

    .line 6
    iput p5, p0, Lcom/shabakaty/downloader/lv;->e:I

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/lv;->f:Landroid/graphics/Typeface;

    return-void
.end method
