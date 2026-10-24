.class public interface abstract Lcom/shabakaty/downloader/gj5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# static fields
.field public static final i:Lcom/shabakaty/downloader/gj5;

.field public static final j:Lcom/shabakaty/downloader/gj5;

.field public static final k:Lcom/shabakaty/downloader/gj5;

.field public static final l:Lcom/shabakaty/downloader/gj5;

.field public static final m:Lcom/shabakaty/downloader/gj5;

.field public static final n:Lcom/shabakaty/downloader/gj5;

.field public static final o:Lcom/shabakaty/downloader/gj5;

.field public static final p:Lcom/shabakaty/downloader/gj5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/hk5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hk5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    new-instance v0, Lcom/shabakaty/downloader/ri5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ri5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/gj5;->j:Lcom/shabakaty/downloader/gj5;

    new-instance v0, Lcom/shabakaty/downloader/ng5;

    const-string v1, "continue"

    .line 1
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ng5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/gj5;->k:Lcom/shabakaty/downloader/gj5;

    new-instance v0, Lcom/shabakaty/downloader/ng5;

    const-string v1, "break"

    .line 2
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ng5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/gj5;->l:Lcom/shabakaty/downloader/gj5;

    new-instance v0, Lcom/shabakaty/downloader/ng5;

    const-string v1, "return"

    .line 3
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ng5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/gj5;->m:Lcom/shabakaty/downloader/gj5;

    new-instance v0, Lcom/shabakaty/downloader/eg5;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/eg5;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lcom/shabakaty/downloader/gj5;->n:Lcom/shabakaty/downloader/gj5;

    new-instance v0, Lcom/shabakaty/downloader/eg5;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/eg5;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lcom/shabakaty/downloader/gj5;->o:Lcom/shabakaty/downloader/gj5;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/ck5;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ck5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/gj5;->p:Lcom/shabakaty/downloader/gj5;

    return-void
.end method


# virtual methods
.method public abstract d()Lcom/shabakaty/downloader/gj5;
.end method

.method public abstract f()Ljava/lang/Double;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Ljava/lang/Boolean;
.end method

.method public abstract p()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;"
        }
    .end annotation
.end method

.method public abstract q(Ljava/lang/String;Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/np4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;)",
            "Lcom/shabakaty/downloader/gj5;"
        }
    .end annotation
.end method
