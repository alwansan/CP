.class public final Lcom/shabakaty/downloader/pl4;
.super Lcom/shabakaty/downloader/gn;
.source "TextButtonItem.kt"


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Ljava/lang/String;

.field public c:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "listItemName"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/gn;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/pl4;->a:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/pl4;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/pl4;->c:Lcom/shabakaty/downloader/rm1;

    .line 6
    iput-object p4, p0, Lcom/shabakaty/downloader/pl4;->d:Ljava/lang/String;

    .line 7
    iput-boolean p5, p0, Lcom/shabakaty/downloader/pl4;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;ZI)V
    .locals 3

    const/4 p4, 0x0

    and-int/lit8 p1, p6, 0x2

    const-string v0, ""

    if-eqz p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 p1, p6, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    move-object v2, p2

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, p2

    :goto_2
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_3

    const/4 p5, 0x1

    const/4 p6, 0x1

    goto :goto_3

    :cond_3
    move p6, p5

    :goto_3
    move-object p1, p0

    move-object p2, p4

    move-object p3, v1

    move-object p4, v2

    move-object p5, v0

    .line 1
    invoke-direct/range {p1 .. p6}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/pl4;->b:Ljava/lang/String;

    return-void
.end method
