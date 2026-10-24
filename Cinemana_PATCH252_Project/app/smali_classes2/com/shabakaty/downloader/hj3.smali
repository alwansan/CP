.class public final Lcom/shabakaty/downloader/hj3;
.super Ljava/lang/Object;
.source "ProtoEnumFlags.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/hj3$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/hj3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/hj3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hj3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/hj3;->a:Lcom/shabakaty/downloader/hj3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/si3;)Lcom/shabakaty/downloader/eu2;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/eu2;->r:Lcom/shabakaty/downloader/eu2;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/hj3$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/eu2;->s:Lcom/shabakaty/downloader/eu2;

    goto :goto_1

    .line 3
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/eu2;->u:Lcom/shabakaty/downloader/eu2;

    goto :goto_1

    .line 4
    :cond_3
    sget-object v0, Lcom/shabakaty/downloader/eu2;->t:Lcom/shabakaty/downloader/eu2;

    :cond_4
    :goto_1
    return-object v0
.end method
