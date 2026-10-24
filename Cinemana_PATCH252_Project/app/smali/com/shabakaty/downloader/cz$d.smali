.class public final Lcom/shabakaty/downloader/cz$d;
.super Lcom/shabakaty/downloader/cz$c;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final s:Lcom/shabakaty/downloader/cz$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cz$d;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cz$d;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/cz$d;->s:Lcom/shabakaty/downloader/cz$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/cz$c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 2
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/ve3;->e(II)I

    const/4 p1, -0x1

    return p1
.end method

.method public b(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
