.class public interface abstract Lcom/shabakaty/downloader/vu0;
.super Ljava/lang/Object;
.source "Dns.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/vu0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/uu0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/uu0;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/vu0;->a:Lcom/shabakaty/downloader/vu0;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method
