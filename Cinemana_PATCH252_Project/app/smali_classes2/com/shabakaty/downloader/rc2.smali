.class public final Lcom/shabakaty/downloader/rc2;
.super Ljava/lang/Object;
.source "KDeclarationContainerImpl.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/rc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rc2<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/rc2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/rc2;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/rc2;->r:Lcom/shabakaty/downloader/rc2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/mr0;

    check-cast p2, Lcom/shabakaty/downloader/mr0;

    .line 2
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/lr0;->b(Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/mr0;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method
