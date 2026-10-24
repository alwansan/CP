.class public final Lcom/shabakaty/downloader/ow3$a;
.super Lcom/shabakaty/downloader/af2;
.source "SafeCollector.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ow3;-><init>(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/me0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/hn1<",
        "Ljava/lang/Integer;",
        "Lcom/shabakaty/downloader/me0$b;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/ow3$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ow3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ow3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ow3$a;->r:Lcom/shabakaty/downloader/ow3$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lcom/shabakaty/downloader/me0$b;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
