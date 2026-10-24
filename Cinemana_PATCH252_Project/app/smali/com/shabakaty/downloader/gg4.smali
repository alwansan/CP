.class public abstract Lcom/shabakaty/downloader/gg4;
.super Ljava/lang/Object;
.source "Fonts.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/gg4$c;,
        Lcom/shabakaty/downloader/gg4$b;,
        Lcom/shabakaty/downloader/gg4$a;,
        Lcom/shabakaty/downloader/gg4$k;,
        Lcom/shabakaty/downloader/gg4$p;,
        Lcom/shabakaty/downloader/gg4$h;,
        Lcom/shabakaty/downloader/gg4$s;,
        Lcom/shabakaty/downloader/gg4$m;,
        Lcom/shabakaty/downloader/gg4$d;,
        Lcom/shabakaty/downloader/gg4$e;,
        Lcom/shabakaty/downloader/gg4$g;,
        Lcom/shabakaty/downloader/gg4$i;,
        Lcom/shabakaty/downloader/gg4$j;,
        Lcom/shabakaty/downloader/gg4$l;,
        Lcom/shabakaty/downloader/gg4$n;,
        Lcom/shabakaty/downloader/gg4$o;,
        Lcom/shabakaty/downloader/gg4$q;,
        Lcom/shabakaty/downloader/gg4$r;
    }
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/gg4;

.field public static final d:Lcom/shabakaty/downloader/kf2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/kf2<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gg4;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/gg4$f;->r:Lcom/shabakaty/downloader/gg4$f;

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/gg4;->d:Lcom/shabakaty/downloader/kf2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/gg4;->b:Ljava/lang/String;

    return-void
.end method
