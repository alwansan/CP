.class public final Lcom/shabakaty/downloader/aj4;
.super Lcom/shabakaty/downloader/gn;
.source "SwitchItem.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/Boolean;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Z

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/aj4;-><init>(Lcom/shabakaty/downloader/tm1;ZLjava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/tm1;ZLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;Z",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/gn;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/aj4;->a:Lcom/shabakaty/downloader/tm1;

    .line 8
    iput-boolean p2, p0, Lcom/shabakaty/downloader/aj4;->b:Z

    .line 9
    iput-object p3, p0, Lcom/shabakaty/downloader/aj4;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/tm1;ZLjava/lang/String;II)V
    .locals 0

    and-int/lit8 p4, p5, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p5, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p5, 0x4

    if-eqz p4, :cond_2

    const-string p3, ""

    :cond_2
    const-string p4, "text"

    .line 1
    invoke-static {p3, p4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/gn;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/aj4;->a:Lcom/shabakaty/downloader/tm1;

    .line 4
    iput-boolean p2, p0, Lcom/shabakaty/downloader/aj4;->b:Z

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/aj4;->c:Ljava/lang/String;

    return-void
.end method
