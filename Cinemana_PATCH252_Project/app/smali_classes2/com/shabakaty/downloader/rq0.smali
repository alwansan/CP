.class public final Lcom/shabakaty/downloader/rq0;
.super Lcom/shabakaty/downloader/af2;
.source "DescriptorEquivalenceForOverrides.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/qm0;",
        "Lcom/shabakaty/downloader/qm0;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/rq0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/rq0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/rq0;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/rq0;->r:Lcom/shabakaty/downloader/rq0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/qm0;

    check-cast p2, Lcom/shabakaty/downloader/qm0;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method
