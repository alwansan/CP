.class public final Lcom/shabakaty/downloader/c70;
.super Lcom/shabakaty/downloader/af2;
.source "CommentsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/c70;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/c70;

    invoke-direct {v0}, Lcom/shabakaty/downloader/c70;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/c70;->r:Lcom/shabakaty/downloader/c70;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
