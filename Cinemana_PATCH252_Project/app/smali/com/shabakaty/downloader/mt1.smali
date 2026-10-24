.class public final Lcom/shabakaty/downloader/mt1;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Lcom/shabakaty/downloader/ra3$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/mt1$b;,
        Lcom/shabakaty/downloader/mt1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ra3$a<",
        "Lcom/shabakaty/downloader/lt1;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Ljava/util/regex/Pattern;

.field public static final B:Ljava/util/regex/Pattern;

.field public static final C:Ljava/util/regex/Pattern;

.field public static final D:Ljava/util/regex/Pattern;

.field public static final E:Ljava/util/regex/Pattern;

.field public static final F:Ljava/util/regex/Pattern;

.field public static final G:Ljava/util/regex/Pattern;

.field public static final H:Ljava/util/regex/Pattern;

.field public static final I:Ljava/util/regex/Pattern;

.field public static final J:Ljava/util/regex/Pattern;

.field public static final K:Ljava/util/regex/Pattern;

.field public static final L:Ljava/util/regex/Pattern;

.field public static final M:Ljava/util/regex/Pattern;

.field public static final N:Ljava/util/regex/Pattern;

.field public static final O:Ljava/util/regex/Pattern;

.field public static final P:Ljava/util/regex/Pattern;

.field public static final Q:Ljava/util/regex/Pattern;

.field public static final R:Ljava/util/regex/Pattern;

.field public static final S:Ljava/util/regex/Pattern;

.field public static final T:Ljava/util/regex/Pattern;

.field public static final U:Ljava/util/regex/Pattern;

.field public static final V:Ljava/util/regex/Pattern;

.field public static final W:Ljava/util/regex/Pattern;

.field public static final X:Ljava/util/regex/Pattern;

.field public static final Y:Ljava/util/regex/Pattern;

.field public static final Z:Ljava/util/regex/Pattern;

.field public static final a0:Ljava/util/regex/Pattern;

.field public static final b0:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/regex/Pattern;

.field public static final n:Ljava/util/regex/Pattern;

.field public static final o:Ljava/util/regex/Pattern;

.field public static final p:Ljava/util/regex/Pattern;

.field public static final q:Ljava/util/regex/Pattern;

.field public static final r:Ljava/util/regex/Pattern;

.field public static final s:Ljava/util/regex/Pattern;

.field public static final t:Ljava/util/regex/Pattern;

.field public static final u:Ljava/util/regex/Pattern;

.field public static final v:Ljava/util/regex/Pattern;

.field public static final w:Ljava/util/regex/Pattern;

.field public static final x:Ljava/util/regex/Pattern;

.field public static final y:Ljava/util/regex/Pattern;

.field public static final z:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lcom/shabakaty/downloader/it1;

.field public final b:Lcom/shabakaty/downloader/kt1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->c:Ljava/util/regex/Pattern;

    const-string v0, "VIDEO=\"(.+?)\""

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->d:Ljava/util/regex/Pattern;

    const-string v0, "AUDIO=\"(.+?)\""

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->e:Ljava/util/regex/Pattern;

    const-string v0, "SUBTITLES=\"(.+?)\""

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->f:Ljava/util/regex/Pattern;

    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->g:Ljava/util/regex/Pattern;

    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    .line 6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->h:Ljava/util/regex/Pattern;

    const-string v0, "CHANNELS=\"(.+?)\""

    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->i:Ljava/util/regex/Pattern;

    const-string v0, "CODECS=\"(.+?)\""

    .line 8
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->j:Ljava/util/regex/Pattern;

    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    .line 9
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->k:Ljava/util/regex/Pattern;

    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    .line 10
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->l:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->m:Ljava/util/regex/Pattern;

    const-string v0, "DURATION=([\\d\\.]+)\\b"

    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->n:Ljava/util/regex/Pattern;

    const-string v0, "PART-TARGET=([\\d\\.]+)\\b"

    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->o:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    .line 14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->p:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    .line 15
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->q:Ljava/util/regex/Pattern;

    const-string v0, "CAN-SKIP-UNTIL=([\\d\\.]+)\\b"

    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->r:Ljava/util/regex/Pattern;

    const-string v0, "CAN-SKIP-DATERANGES"

    .line 17
    invoke-static {v0}, Lcom/shabakaty/downloader/mt1;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->s:Ljava/util/regex/Pattern;

    const-string v0, "SKIPPED-SEGMENTS=(\\d+)\\b"

    .line 18
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->t:Ljava/util/regex/Pattern;

    const-string v0, "[:|,]HOLD-BACK=([\\d\\.]+)\\b"

    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->u:Ljava/util/regex/Pattern;

    const-string v0, "PART-HOLD-BACK=([\\d\\.]+)\\b"

    .line 20
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->v:Ljava/util/regex/Pattern;

    const-string v0, "CAN-BLOCK-RELOAD"

    .line 21
    invoke-static {v0}, Lcom/shabakaty/downloader/mt1;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->w:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->x:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    .line 23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->y:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    .line 24
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->z:Ljava/util/regex/Pattern;

    const-string v0, "LAST-MSN=(\\d+)\\b"

    .line 25
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->A:Ljava/util/regex/Pattern;

    const-string v0, "LAST-PART=(\\d+)\\b"

    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->B:Ljava/util/regex/Pattern;

    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->C:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->D:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->E:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE-START=(\\d+)\\b"

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->F:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE-LENGTH=(\\d+)\\b"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->G:Ljava/util/regex/Pattern;

    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->H:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMAT=\"(.+?)\""

    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->I:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->J:Ljava/util/regex/Pattern;

    const-string v0, "URI=\"(.+?)\""

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->K:Ljava/util/regex/Pattern;

    const-string v0, "IV=([^,.*]+)"

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->L:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->M:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(PART|MAP)"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->N:Ljava/util/regex/Pattern;

    const-string v0, "LANGUAGE=\"(.+?)\""

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->O:Ljava/util/regex/Pattern;

    const-string v0, "NAME=\"(.+?)\""

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->P:Ljava/util/regex/Pattern;

    const-string v0, "GROUP-ID=\"(.+?)\""

    .line 41
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->Q:Ljava/util/regex/Pattern;

    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    .line 42
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->R:Ljava/util/regex/Pattern;

    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->S:Ljava/util/regex/Pattern;

    const-string v0, "AUTOSELECT"

    .line 44
    invoke-static {v0}, Lcom/shabakaty/downloader/mt1;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->T:Ljava/util/regex/Pattern;

    const-string v0, "DEFAULT"

    .line 45
    invoke-static {v0}, Lcom/shabakaty/downloader/mt1;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->U:Ljava/util/regex/Pattern;

    const-string v0, "FORCED"

    .line 46
    invoke-static {v0}, Lcom/shabakaty/downloader/mt1;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->V:Ljava/util/regex/Pattern;

    const-string v0, "INDEPENDENT"

    .line 47
    invoke-static {v0}, Lcom/shabakaty/downloader/mt1;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->W:Ljava/util/regex/Pattern;

    const-string v0, "GAP"

    .line 48
    invoke-static {v0}, Lcom/shabakaty/downloader/mt1;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->X:Ljava/util/regex/Pattern;

    const-string v0, "PRECISE"

    .line 49
    invoke-static {v0}, Lcom/shabakaty/downloader/mt1;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->Y:Ljava/util/regex/Pattern;

    const-string v0, "VALUE=\"(.+?)\""

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->Z:Ljava/util/regex/Pattern;

    const-string v0, "IMPORT=\"(.+?)\""

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->a0:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mt1;->b0:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/it1;->n:Lcom/shabakaty/downloader/it1;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/mt1;->a:Lcom/shabakaty/downloader/it1;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/mt1;->b:Lcom/shabakaty/downloader/kt1;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/it1;Lcom/shabakaty/downloader/kt1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/mt1;->a:Lcom/shabakaty/downloader/it1;

    .line 7
    iput-object p2, p0, Lcom/shabakaty/downloader/mt1;->b:Lcom/shabakaty/downloader/kt1;

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    const-string v1, "=("

    const-string v2, "NO"

    const-string v3, "|"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/shabakaty/downloader/nl3;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "YES"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;[Lcom/shabakaty/downloader/o01$b;)Lcom/shabakaty/downloader/o01;
    .locals 7

    .line 1
    array-length v0, p1

    new-array v0, v0, [Lcom/shabakaty/downloader/o01$b;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    aget-object v2, p1, v1

    const/4 v3, 0x0

    .line 4
    new-instance v4, Lcom/shabakaty/downloader/o01$b;

    iget-object v5, v2, Lcom/shabakaty/downloader/o01$b;->s:Ljava/util/UUID;

    iget-object v6, v2, Lcom/shabakaty/downloader/o01$b;->t:Ljava/lang/String;

    iget-object v2, v2, Lcom/shabakaty/downloader/o01$b;->u:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v2, v3}, Lcom/shabakaty/downloader/o01$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 5
    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/o01;

    const/4 v1, 0x1

    .line 7
    invoke-direct {p1, p0, v1, v0}, Lcom/shabakaty/downloader/o01;-><init>(Ljava/lang/String;Z[Lcom/shabakaty/downloader/o01$b;)V

    return-object p1
.end method

.method public static d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    return-object p3

    .line 1
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/shabakaty/downloader/o01$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/shabakaty/downloader/o01$b;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/mt1;->J:Ljava/util/regex/Pattern;

    const-string v1, "1"

    .line 2
    invoke-static {p0, v0, v1, p2}, Lcom/shabakaty/downloader/mt1;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2c

    const-string v5, "video/mp4"

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/mt1;->K:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/o01$b;

    sget-object p2, Lcom/shabakaty/downloader/jp;->d:Ljava/util/UUID;

    .line 6
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 7
    invoke-direct {p1, p2, v6, v5, p0}, Lcom/shabakaty/downloader/o01$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object p1

    :cond_0
    const-string v2, "com.widevine"

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/o01$b;

    sget-object p2, Lcom/shabakaty/downloader/jp;->d:Ljava/util/UUID;

    invoke-static {p0}, Lcom/shabakaty/downloader/sy4;->C(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "hls"

    .line 10
    invoke-direct {p1, p2, v6, v0, p0}, Lcom/shabakaty/downloader/o01$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object p1

    :cond_1
    const-string v2, "com.microsoft.playready"

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    sget-object p1, Lcom/shabakaty/downloader/mt1;->K:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 14
    sget-object p1, Lcom/shabakaty/downloader/jp;->e:Ljava/util/UUID;

    invoke-static {p1, p0}, Lcom/shabakaty/downloader/uj3;->a(Ljava/util/UUID;[B)[B

    move-result-object p0

    .line 15
    new-instance p2, Lcom/shabakaty/downloader/o01$b;

    .line 16
    invoke-direct {p2, p1, v6, v5, p0}, Lcom/shabakaty/downloader/o01$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object p2

    :cond_2
    return-object v6
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "SAMPLE-AES-CENC"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SAMPLE-AES-CTR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "cbcs"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "cenc"

    :goto_1
    return-object p0
.end method

.method public static h(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Lcom/shabakaty/downloader/mt1$b;Ljava/lang/String;)Lcom/shabakaty/downloader/it1;
    .locals 34

    move-object/from16 v1, p1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 11
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/mt1$b;->a()Z

    move-result v13

    const-string v14, "application/x-mpegURL"

    if-eqz v13, :cond_10

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/mt1$b;->b()Ljava/lang/String;

    move-result-object v13

    const-string v15, "#EXT"

    .line 13
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 14
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v15, "#EXT-X-I-FRAME-STREAM-INF"

    .line 15
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    move/from16 v16, v10

    const-string v10, "#EXT-X-DEFINE"

    .line 16
    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 17
    sget-object v10, Lcom/shabakaty/downloader/mt1;->P:Ljava/util/regex/Pattern;

    .line 18
    invoke-static {v13, v10, v11}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/shabakaty/downloader/mt1;->Z:Ljava/util/regex/Pattern;

    .line 19
    invoke-static {v13, v14, v11}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 20
    invoke-virtual {v11, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    move-object/from16 v17, v7

    goto/16 :goto_2

    :cond_2
    const-string v10, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 21
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    move-object v1, v0

    move-object/from16 v31, v3

    move-object/from16 v30, v4

    move-object/from16 v29, v5

    move-object/from16 v28, v6

    move-object/from16 v17, v7

    move-object/from16 v27, v8

    move-object/from16 v26, v12

    goto/16 :goto_8

    :cond_3
    const-string v10, "#EXT-X-MEDIA"

    .line 22
    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 23
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v10, "#EXT-X-SESSION-KEY"

    .line 24
    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 25
    sget-object v10, Lcom/shabakaty/downloader/mt1;->I:Ljava/util/regex/Pattern;

    const-string v14, "identity"

    .line 26
    invoke-static {v13, v10, v14, v11}, Lcom/shabakaty/downloader/mt1;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 27
    invoke-static {v13, v10, v11}, Lcom/shabakaty/downloader/mt1;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/shabakaty/downloader/o01$b;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 28
    sget-object v14, Lcom/shabakaty/downloader/mt1;->H:Ljava/util/regex/Pattern;

    invoke-static {v13, v14, v11}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 29
    invoke-static {v13}, Lcom/shabakaty/downloader/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 30
    new-instance v14, Lcom/shabakaty/downloader/o01;

    const/4 v15, 0x1

    move-object/from16 v17, v7

    new-array v7, v15, [Lcom/shabakaty/downloader/o01$b;

    const/16 v18, 0x0

    aput-object v10, v7, v18

    .line 31
    invoke-direct {v14, v13, v15, v7}, Lcom/shabakaty/downloader/o01;-><init>(Ljava/lang/String;Z[Lcom/shabakaty/downloader/o01$b;)V

    .line 32
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v17, v7

    const-string v7, "#EXT-X-STREAM-INF"

    .line 33
    invoke-virtual {v13, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v15, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    move-object v1, v0

    move-object/from16 v31, v3

    move-object/from16 v30, v4

    move-object/from16 v29, v5

    move-object/from16 v28, v6

    move-object/from16 v27, v8

    move-object/from16 v26, v12

    move/from16 v10, v16

    goto/16 :goto_8

    :cond_7
    :goto_3
    const-string v7, "CLOSED-CAPTIONS=NONE"

    .line 34
    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    or-int/2addr v7, v9

    if-eqz v15, :cond_8

    const/16 v9, 0x4000

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    .line 35
    :goto_4
    sget-object v10, Lcom/shabakaty/downloader/mt1;->h:Ljava/util/regex/Pattern;

    invoke-static {v13, v10}, Lcom/shabakaty/downloader/mt1;->h(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v10

    move/from16 v25, v7

    .line 36
    sget-object v7, Lcom/shabakaty/downloader/mt1;->c:Ljava/util/regex/Pattern;

    move-object/from16 v26, v12

    const/4 v12, -0x1

    invoke-static {v13, v7, v12}, Lcom/shabakaty/downloader/mt1;->m(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    move-result v7

    .line 37
    sget-object v12, Lcom/shabakaty/downloader/mt1;->j:Ljava/util/regex/Pattern;

    invoke-static {v13, v12, v11}, Lcom/shabakaty/downloader/mt1;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v27, v8

    .line 38
    sget-object v8, Lcom/shabakaty/downloader/mt1;->k:Ljava/util/regex/Pattern;

    .line 39
    invoke-static {v13, v8, v11}, Lcom/shabakaty/downloader/mt1;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 40
    sget v18, Lcom/shabakaty/downloader/sy4;->a:I

    move-object/from16 v28, v6

    const-string v6, "x"

    move-object/from16 v29, v5

    const/4 v5, -0x1

    .line 41
    invoke-virtual {v8, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 42
    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v18, 0x1

    .line 43
    aget-object v6, v6, v18

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v8, :cond_a

    if-gtz v6, :cond_b

    goto :goto_5

    :cond_9
    move-object/from16 v29, v5

    move-object/from16 v28, v6

    const/4 v5, -0x1

    :cond_a
    :goto_5
    const/4 v6, -0x1

    move v8, v5

    .line 44
    :cond_b
    sget-object v5, Lcom/shabakaty/downloader/mt1;->l:Ljava/util/regex/Pattern;

    .line 45
    invoke-static {v13, v5, v11}, Lcom/shabakaty/downloader/mt1;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 46
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    goto :goto_6

    :cond_c
    const/high16 v5, -0x40800000    # -1.0f

    :goto_6
    move-object/from16 v30, v4

    .line 47
    sget-object v4, Lcom/shabakaty/downloader/mt1;->d:Ljava/util/regex/Pattern;

    invoke-static {v13, v4, v11}, Lcom/shabakaty/downloader/mt1;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v31, v3

    .line 48
    sget-object v3, Lcom/shabakaty/downloader/mt1;->e:Ljava/util/regex/Pattern;

    invoke-static {v13, v3, v11}, Lcom/shabakaty/downloader/mt1;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v32, v0

    .line 49
    sget-object v0, Lcom/shabakaty/downloader/mt1;->f:Ljava/util/regex/Pattern;

    .line 50
    invoke-static {v13, v0, v11}, Lcom/shabakaty/downloader/mt1;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v33, v0

    .line 51
    sget-object v0, Lcom/shabakaty/downloader/mt1;->g:Ljava/util/regex/Pattern;

    .line 52
    invoke-static {v13, v0, v11}, Lcom/shabakaty/downloader/mt1;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v15, :cond_d

    .line 53
    sget-object v15, Lcom/shabakaty/downloader/mt1;->K:Ljava/util/regex/Pattern;

    .line 54
    invoke-static {v13, v15, v11}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/shabakaty/downloader/zw4;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    goto :goto_7

    .line 55
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/mt1$b;->a()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/mt1$b;->b()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v11}, Lcom/shabakaty/downloader/mt1;->r(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 57
    invoke-static {v1, v13}, Lcom/shabakaty/downloader/zw4;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 58
    :goto_7
    new-instance v15, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v15}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/shabakaty/downloader/wh1$b;->b(I)Lcom/shabakaty/downloader/wh1$b;

    .line 60
    iput-object v14, v15, Lcom/shabakaty/downloader/wh1$b;->j:Ljava/lang/String;

    .line 61
    iput-object v12, v15, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 62
    iput v7, v15, Lcom/shabakaty/downloader/wh1$b;->f:I

    .line 63
    iput v10, v15, Lcom/shabakaty/downloader/wh1$b;->g:I

    .line 64
    iput v8, v15, Lcom/shabakaty/downloader/wh1$b;->p:I

    .line 65
    iput v6, v15, Lcom/shabakaty/downloader/wh1$b;->q:I

    .line 66
    iput v5, v15, Lcom/shabakaty/downloader/wh1$b;->r:F

    .line 67
    iput v9, v15, Lcom/shabakaty/downloader/wh1$b;->e:I

    .line 68
    invoke-virtual {v15}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v20

    .line 69
    new-instance v1, Lcom/shabakaty/downloader/it1$b;

    move-object/from16 v18, v1

    move-object/from16 v19, v13

    move-object/from16 v21, v4

    move-object/from16 v22, v3

    move-object/from16 v23, v33

    move-object/from16 v24, v0

    invoke-direct/range {v18 .. v24}, Lcom/shabakaty/downloader/it1$b;-><init>(Landroid/net/Uri;Lcom/shabakaty/downloader/wh1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v32

    .line 71
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_e

    .line 72
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual {v1, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_e
    new-instance v6, Lcom/shabakaty/downloader/rt1$b;

    move-object/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v10

    move-object/from16 v21, v4

    move-object/from16 v22, v3

    move-object/from16 v23, v33

    move-object/from16 v24, v0

    invoke-direct/range {v18 .. v24}, Lcom/shabakaty/downloader/rt1$b;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v16

    move/from16 v9, v25

    :goto_8
    move-object v0, v1

    move-object/from16 v7, v17

    move-object/from16 v12, v26

    move-object/from16 v8, v27

    move-object/from16 v6, v28

    move-object/from16 v5, v29

    move-object/from16 v4, v30

    move-object/from16 v3, v31

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_f
    const-string v0, "#EXT-X-STREAM-INF must be followed by another line"

    const/4 v1, 0x0

    .line 75
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    :cond_10
    move-object v1, v0

    move-object/from16 v31, v3

    move-object/from16 v30, v4

    move-object/from16 v29, v5

    move-object/from16 v28, v6

    move-object/from16 v17, v7

    move-object/from16 v27, v8

    move/from16 v16, v10

    move-object/from16 v26, v12

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    .line 78
    :goto_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_13

    .line 79
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/it1$b;

    .line 80
    iget-object v6, v5, Lcom/shabakaty/downloader/it1$b;->a:Landroid/net/Uri;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 81
    iget-object v6, v5, Lcom/shabakaty/downloader/it1$b;->b:Lcom/shabakaty/downloader/wh1;

    iget-object v6, v6, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    if-nez v6, :cond_11

    const/4 v6, 0x1

    goto :goto_a

    :cond_11
    const/4 v6, 0x0

    :goto_a
    invoke-static {v6}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 82
    new-instance v6, Lcom/shabakaty/downloader/rt1;

    iget-object v7, v5, Lcom/shabakaty/downloader/it1$b;->a:Landroid/net/Uri;

    .line 83
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 84
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    .line 85
    invoke-direct {v6, v8, v8, v7}, Lcom/shabakaty/downloader/rt1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 86
    new-instance v7, Lcom/shabakaty/downloader/ps2;

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/shabakaty/downloader/ps2$b;

    const/4 v10, 0x0

    aput-object v6, v8, v10

    invoke-direct {v7, v8}, Lcom/shabakaty/downloader/ps2;-><init>([Lcom/shabakaty/downloader/ps2$b;)V

    .line 87
    iget-object v6, v5, Lcom/shabakaty/downloader/it1$b;->b:Lcom/shabakaty/downloader/wh1;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/wh1;->a()Lcom/shabakaty/downloader/wh1$b;

    move-result-object v6

    .line 88
    iput-object v7, v6, Lcom/shabakaty/downloader/wh1$b;->i:Lcom/shabakaty/downloader/ps2;

    .line 89
    invoke-virtual {v6}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v20

    .line 90
    new-instance v6, Lcom/shabakaty/downloader/it1$b;

    iget-object v7, v5, Lcom/shabakaty/downloader/it1$b;->a:Landroid/net/Uri;

    iget-object v8, v5, Lcom/shabakaty/downloader/it1$b;->c:Ljava/lang/String;

    iget-object v10, v5, Lcom/shabakaty/downloader/it1$b;->d:Ljava/lang/String;

    iget-object v12, v5, Lcom/shabakaty/downloader/it1$b;->e:Ljava/lang/String;

    iget-object v5, v5, Lcom/shabakaty/downloader/it1$b;->f:Ljava/lang/String;

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v10

    move-object/from16 v23, v12

    move-object/from16 v24, v5

    invoke-direct/range {v18 .. v24}, Lcom/shabakaty/downloader/it1$b;-><init>(Landroid/net/Uri;Lcom/shabakaty/downloader/wh1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v8, v0

    .line 92
    :goto_b
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_36

    move-object/from16 v4, v31

    .line 93
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 94
    sget-object v6, Lcom/shabakaty/downloader/mt1;->Q:Ljava/util/regex/Pattern;

    invoke-static {v5, v6, v11}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 95
    sget-object v7, Lcom/shabakaty/downloader/mt1;->P:Ljava/util/regex/Pattern;

    invoke-static {v5, v7, v11}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 96
    new-instance v10, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v10}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v12

    const-string v12, ":"

    invoke-static {v13, v6, v12, v7}, Lcom/shabakaty/downloader/bc0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 97
    iput-object v12, v10, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 98
    iput-object v7, v10, Lcom/shabakaty/downloader/wh1$b;->b:Ljava/lang/String;

    .line 99
    iput-object v14, v10, Lcom/shabakaty/downloader/wh1$b;->j:Ljava/lang/String;

    .line 100
    sget-object v12, Lcom/shabakaty/downloader/mt1;->U:Ljava/util/regex/Pattern;

    const/4 v13, 0x0

    invoke-static {v5, v12, v13}, Lcom/shabakaty/downloader/mt1;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v12

    .line 101
    sget-object v15, Lcom/shabakaty/downloader/mt1;->V:Ljava/util/regex/Pattern;

    invoke-static {v5, v15, v13}, Lcom/shabakaty/downloader/mt1;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v15

    if-eqz v15, :cond_14

    or-int/lit8 v12, v12, 0x2

    .line 102
    :cond_14
    sget-object v15, Lcom/shabakaty/downloader/mt1;->T:Ljava/util/regex/Pattern;

    invoke-static {v5, v15, v13}, Lcom/shabakaty/downloader/mt1;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v13

    if-eqz v13, :cond_15

    or-int/lit8 v12, v12, 0x4

    .line 103
    :cond_15
    iput v12, v10, Lcom/shabakaty/downloader/wh1$b;->d:I

    .line 104
    sget-object v12, Lcom/shabakaty/downloader/mt1;->R:Ljava/util/regex/Pattern;

    .line 105
    invoke-static {v5, v12, v11}, Lcom/shabakaty/downloader/mt1;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 106
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_16

    const/4 v12, 0x0

    goto :goto_d

    :cond_16
    const-string v13, ","

    .line 107
    invoke-static {v12, v13}, Lcom/shabakaty/downloader/sy4;->P(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string v13, "public.accessibility.describes-video"

    .line 108
    invoke-static {v12, v13}, Lcom/shabakaty/downloader/sy4;->k([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    const/16 v13, 0x200

    goto :goto_c

    :cond_17
    const/4 v13, 0x0

    :goto_c
    const-string v15, "public.accessibility.transcribes-spoken-dialog"

    .line 109
    invoke-static {v12, v15}, Lcom/shabakaty/downloader/sy4;->k([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    or-int/lit16 v13, v13, 0x1000

    :cond_18
    const-string v15, "public.accessibility.describes-music-and-sound"

    .line 110
    invoke-static {v12, v15}, Lcom/shabakaty/downloader/sy4;->k([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    or-int/lit16 v13, v13, 0x400

    :cond_19
    const-string v15, "public.easy-to-read"

    .line 111
    invoke-static {v12, v15}, Lcom/shabakaty/downloader/sy4;->k([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    or-int/lit16 v12, v13, 0x2000

    goto :goto_d

    :cond_1a
    move v12, v13

    .line 112
    :goto_d
    iput v12, v10, Lcom/shabakaty/downloader/wh1$b;->e:I

    .line 113
    sget-object v12, Lcom/shabakaty/downloader/mt1;->O:Ljava/util/regex/Pattern;

    .line 114
    invoke-static {v5, v12, v11}, Lcom/shabakaty/downloader/mt1;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 115
    iput-object v12, v10, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 116
    sget-object v12, Lcom/shabakaty/downloader/mt1;->K:Ljava/util/regex/Pattern;

    invoke-static {v5, v12, v11}, Lcom/shabakaty/downloader/mt1;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1b

    const/4 v12, 0x0

    move-object/from16 v13, p1

    goto :goto_e

    :cond_1b
    move-object/from16 v13, p1

    .line 117
    invoke-static {v13, v12}, Lcom/shabakaty/downloader/zw4;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 118
    :goto_e
    new-instance v15, Lcom/shabakaty/downloader/ps2;

    move-object/from16 v31, v4

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/shabakaty/downloader/ps2$b;

    new-instance v13, Lcom/shabakaty/downloader/rt1;

    move-object/from16 v18, v14

    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v6, v7, v14}, Lcom/shabakaty/downloader/rt1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 v14, 0x0

    aput-object v13, v4, v14

    invoke-direct {v15, v4}, Lcom/shabakaty/downloader/ps2;-><init>([Lcom/shabakaty/downloader/ps2$b;)V

    .line 120
    sget-object v4, Lcom/shabakaty/downloader/mt1;->M:Ljava/util/regex/Pattern;

    invoke-static {v5, v4, v11}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v14, 0x2

    sparse-switch v13, :sswitch_data_0

    goto :goto_f

    :sswitch_0
    const-string v13, "VIDEO"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_f

    :cond_1c
    const/4 v4, 0x3

    goto :goto_10

    :sswitch_1
    const-string v13, "AUDIO"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_f

    :cond_1d
    const/4 v4, 0x2

    goto :goto_10

    :sswitch_2
    const-string v13, "CLOSED-CAPTIONS"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_f

    :cond_1e
    const/4 v4, 0x1

    goto :goto_10

    :sswitch_3
    const-string v13, "SUBTITLES"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_f

    :cond_1f
    const/4 v4, 0x0

    goto :goto_10

    :goto_f
    const/4 v4, -0x1

    :goto_10
    if-eqz v4, :cond_30

    const/4 v13, 0x1

    if-eq v4, v13, :cond_2c

    if-eq v4, v14, :cond_25

    const/4 v5, 0x3

    if-eq v4, v5, :cond_20

    goto :goto_13

    :cond_20
    const/4 v4, 0x0

    .line 121
    :goto_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_22

    .line 122
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/it1$b;

    .line 123
    iget-object v13, v5, Lcom/shabakaty/downloader/it1$b;->c:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    goto :goto_12

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_22
    const/4 v5, 0x0

    :goto_12
    if-eqz v5, :cond_23

    .line 124
    iget-object v4, v5, Lcom/shabakaty/downloader/it1$b;->b:Lcom/shabakaty/downloader/wh1;

    .line 125
    iget-object v5, v4, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    invoke-static {v5, v14}, Lcom/shabakaty/downloader/sy4;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 126
    iput-object v5, v10, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 127
    invoke-static {v5}, Lcom/shabakaty/downloader/nt2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    iput-object v5, v10, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 129
    iget v5, v4, Lcom/shabakaty/downloader/wh1;->H:I

    .line 130
    iput v5, v10, Lcom/shabakaty/downloader/wh1$b;->p:I

    .line 131
    iget v5, v4, Lcom/shabakaty/downloader/wh1;->I:I

    .line 132
    iput v5, v10, Lcom/shabakaty/downloader/wh1$b;->q:I

    .line 133
    iget v4, v4, Lcom/shabakaty/downloader/wh1;->J:F

    .line 134
    iput v4, v10, Lcom/shabakaty/downloader/wh1$b;->r:F

    :cond_23
    if-nez v12, :cond_24

    :goto_13
    move-object/from16 v13, v30

    goto :goto_14

    .line 135
    :cond_24
    iput-object v15, v10, Lcom/shabakaty/downloader/wh1$b;->i:Lcom/shabakaty/downloader/ps2;

    .line 136
    new-instance v4, Lcom/shabakaty/downloader/it1$a;

    invoke-virtual {v10}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v5

    invoke-direct {v4, v12, v5, v6, v7}, Lcom/shabakaty/downloader/it1$a;-><init>(Landroid/net/Uri;Lcom/shabakaty/downloader/wh1;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v13, v30

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    move-object/from16 p0, v8

    move-object/from16 v30, v13

    move-object/from16 v6, v28

    move-object/from16 v8, v29

    goto/16 :goto_1f

    :cond_25
    move-object/from16 v13, v30

    const/4 v4, 0x0

    .line 137
    :goto_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_27

    .line 138
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shabakaty/downloader/it1$b;

    move-object/from16 p0, v8

    .line 139
    iget-object v8, v14, Lcom/shabakaty/downloader/it1$b;->d:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    goto :goto_16

    :cond_26
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v8, p0

    goto :goto_15

    :cond_27
    move-object/from16 p0, v8

    const/4 v14, 0x0

    :goto_16
    if-eqz v14, :cond_28

    .line 140
    iget-object v4, v14, Lcom/shabakaty/downloader/it1$b;->b:Lcom/shabakaty/downloader/wh1;

    iget-object v4, v4, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v4, v8}, Lcom/shabakaty/downloader/sy4;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 141
    iput-object v4, v10, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 142
    invoke-static {v4}, Lcom/shabakaty/downloader/nt2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_17

    :cond_28
    const/4 v4, 0x0

    .line 143
    :goto_17
    sget-object v8, Lcom/shabakaty/downloader/mt1;->i:Ljava/util/regex/Pattern;

    .line 144
    invoke-static {v5, v8, v11}, Lcom/shabakaty/downloader/mt1;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_29

    .line 145
    sget v8, Lcom/shabakaty/downloader/sy4;->a:I

    const-string v8, "/"

    move-object/from16 v30, v13

    const/4 v13, 0x2

    .line 146
    invoke-virtual {v5, v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    .line 147
    aget-object v8, v8, v13

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 148
    iput v8, v10, Lcom/shabakaty/downloader/wh1$b;->x:I

    const-string v8, "audio/eac3"

    .line 149
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const-string v8, "/JOC"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const-string v4, "ec+3"

    .line 150
    iput-object v4, v10, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    const-string v4, "audio/eac3-joc"

    goto :goto_18

    :cond_29
    move-object/from16 v30, v13

    .line 151
    :cond_2a
    :goto_18
    iput-object v4, v10, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    if-eqz v12, :cond_2b

    .line 152
    iput-object v15, v10, Lcom/shabakaty/downloader/wh1$b;->i:Lcom/shabakaty/downloader/ps2;

    .line 153
    new-instance v4, Lcom/shabakaty/downloader/it1$a;

    invoke-virtual {v10}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v5

    invoke-direct {v4, v12, v5, v6, v7}, Lcom/shabakaty/downloader/it1$a;-><init>(Landroid/net/Uri;Lcom/shabakaty/downloader/wh1;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v29

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2b
    move-object/from16 v8, v29

    if-eqz v14, :cond_2f

    .line 154
    invoke-virtual {v10}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v4

    goto :goto_1b

    :cond_2c
    move-object/from16 p0, v8

    move-object/from16 v8, v29

    .line 155
    sget-object v4, Lcom/shabakaty/downloader/mt1;->S:Ljava/util/regex/Pattern;

    invoke-static {v5, v4, v11}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CC"

    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const/4 v5, 0x2

    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "application/cea-608"

    goto :goto_19

    :cond_2d
    const/4 v5, 0x7

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "application/cea-708"

    :goto_19
    if-nez v0, :cond_2e

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    :cond_2e
    iput-object v5, v10, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 161
    iput v4, v10, Lcom/shabakaty/downloader/wh1$b;->C:I

    .line 162
    invoke-virtual {v10}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_1a
    move-object/from16 v4, p0

    :goto_1b
    move-object/from16 v6, v28

    goto :goto_20

    :cond_30
    move-object/from16 p0, v8

    move-object/from16 v8, v29

    const/4 v4, 0x0

    .line 163
    :goto_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_32

    .line 164
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/it1$b;

    .line 165
    iget-object v13, v5, Lcom/shabakaty/downloader/it1$b;->e:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_31

    goto :goto_1d

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_32
    const/4 v5, 0x0

    :goto_1d
    if-eqz v5, :cond_33

    .line 166
    iget-object v4, v5, Lcom/shabakaty/downloader/it1$b;->b:Lcom/shabakaty/downloader/wh1;

    iget-object v4, v4, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/sy4;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 167
    iput-object v4, v10, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 168
    invoke-static {v4}, Lcom/shabakaty/downloader/nt2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    :cond_33
    const/4 v4, 0x0

    :goto_1e
    if-nez v4, :cond_34

    const-string v4, "text/vtt"

    .line 169
    :cond_34
    iput-object v4, v10, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 170
    iput-object v15, v10, Lcom/shabakaty/downloader/wh1$b;->i:Lcom/shabakaty/downloader/ps2;

    if-eqz v12, :cond_35

    .line 171
    new-instance v4, Lcom/shabakaty/downloader/it1$a;

    invoke-virtual {v10}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v5

    invoke-direct {v4, v12, v5, v6, v7}, Lcom/shabakaty/downloader/it1$a;-><init>(Landroid/net/Uri;Lcom/shabakaty/downloader/wh1;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v28

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_35
    move-object/from16 v6, v28

    const-string v4, "HlsPlaylistParser"

    const-string v5, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping"

    .line 172
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    move-object/from16 v4, p0

    :goto_20
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v28, v6

    move-object/from16 v29, v8

    move-object/from16 v14, v18

    move-object v8, v4

    goto/16 :goto_b

    :cond_36
    move-object/from16 p0, v8

    move-object/from16 v6, v28

    move-object/from16 v8, v29

    if-eqz v9, :cond_37

    .line 173
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_37
    move-object v9, v0

    .line 174
    new-instance v13, Lcom/shabakaty/downloader/it1;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v4, v30

    move-object v5, v8

    move-object/from16 v7, v17

    move-object/from16 v8, p0

    move/from16 v10, v16

    move-object/from16 v12, v26

    invoke-direct/range {v0 .. v12}, Lcom/shabakaty/downloader/it1;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/wh1;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v13

    nop

    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_3
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch
.end method

.method public static j(Lcom/shabakaty/downloader/it1;Lcom/shabakaty/downloader/kt1;Lcom/shabakaty/downloader/mt1$b;Ljava/lang/String;)Lcom/shabakaty/downloader/kt1;
    .locals 94

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/shabakaty/downloader/lt1;->c:Z

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v5, Lcom/shabakaty/downloader/kt1$f;

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v19, 0x0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v24}, Lcom/shabakaty/downloader/kt1$f;-><init>(JZJJZ)V

    .line 9
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    const/4 v8, 0x0

    const-string v9, ""

    const-wide/16 v18, 0x0

    move-object/from16 v79, p1

    move-object/from16 v78, v0

    move/from16 v33, v1

    move-object/from16 v54, v5

    move-object/from16 v39, v9

    move-wide/from16 v22, v18

    move-wide/from16 v26, v22

    move-wide/from16 v36, v26

    move-wide/from16 v48, v36

    move-wide/from16 v82, v48

    move-wide/from16 v84, v82

    move-wide/from16 v88, v84

    move-wide/from16 v90, v88

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x1

    const-wide v29, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v31, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v38, 0x0

    const/16 v52, 0x0

    const/16 v55, 0x0

    const/16 v75, 0x0

    const-wide/16 v76, -0x1

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mt1$b;->a()Z

    move-result v40

    if-eqz v40, :cond_48

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/mt1$b;->b()Ljava/lang/String;

    move-result-object v11

    const-string v12, "#EXT"

    .line 12
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 13
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v12, "#EXT-X-PLAYLIST-TYPE"

    .line 14
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 15
    sget-object v12, Lcom/shabakaty/downloader/mt1;->q:Ljava/util/regex/Pattern;

    invoke-static {v11, v12, v2}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "VOD"

    .line 16
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const-string v12, "EVENT"

    .line 17
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    const-string v12, "#EXT-X-I-FRAMES-ONLY"

    .line 18
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v86, 0x1

    goto :goto_0

    :cond_4
    const-string v12, "#EXT-X-START"

    .line 19
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const-wide v40, 0x412e848000000000L    # 1000000.0

    if-eqz v12, :cond_5

    .line 20
    sget-object v1, Lcom/shabakaty/downloader/mt1;->C:Ljava/util/regex/Pattern;

    invoke-static {v11, v1}, Lcom/shabakaty/downloader/mt1;->e(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v20

    move-object/from16 v92, v14

    mul-double v13, v20, v40

    double-to-long v13, v13

    .line 21
    sget-object v1, Lcom/shabakaty/downloader/mt1;->Y:Ljava/util/regex/Pattern;

    .line 22
    invoke-static {v11, v1, v8}, Lcom/shabakaty/downloader/mt1;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    move-wide/from16 v20, v13

    :goto_1
    move-object/from16 v14, v92

    goto :goto_0

    :cond_5
    move-object/from16 v92, v14

    const-string v13, "#EXT-X-SERVER-CONTROL"

    .line 23
    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 24
    sget-object v13, Lcom/shabakaty/downloader/mt1;->r:Ljava/util/regex/Pattern;

    move-object/from16 v93, v9

    const-wide/high16 v8, -0x3c20000000000000L    # -9.223372036854776E18

    .line 25
    invoke-static {v11, v13, v8, v9}, Lcom/shabakaty/downloader/mt1;->l(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v42

    cmpl-double v13, v42, v8

    if-nez v13, :cond_6

    const-wide v57, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_6
    mul-double v12, v42, v40

    double-to-long v12, v12

    move-wide/from16 v57, v12

    .line 26
    :goto_2
    sget-object v12, Lcom/shabakaty/downloader/mt1;->s:Ljava/util/regex/Pattern;

    const/4 v13, 0x0

    .line 27
    invoke-static {v11, v12, v13}, Lcom/shabakaty/downloader/mt1;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v59

    .line 28
    sget-object v12, Lcom/shabakaty/downloader/mt1;->u:Ljava/util/regex/Pattern;

    .line 29
    invoke-static {v11, v12, v8, v9}, Lcom/shabakaty/downloader/mt1;->l(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v12

    cmpl-double v42, v12, v8

    if-nez v42, :cond_7

    const-wide v60, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    :cond_7
    mul-double v12, v12, v40

    double-to-long v12, v12

    move-wide/from16 v60, v12

    .line 30
    :goto_3
    sget-object v12, Lcom/shabakaty/downloader/mt1;->v:Ljava/util/regex/Pattern;

    invoke-static {v11, v12, v8, v9}, Lcom/shabakaty/downloader/mt1;->l(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v12

    cmpl-double v42, v12, v8

    if-nez v42, :cond_8

    const-wide v62, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_4

    :cond_8
    mul-double v12, v12, v40

    double-to-long v8, v12

    move-wide/from16 v62, v8

    .line 31
    :goto_4
    sget-object v8, Lcom/shabakaty/downloader/mt1;->w:Ljava/util/regex/Pattern;

    const/4 v9, 0x0

    .line 32
    invoke-static {v11, v8, v9}, Lcom/shabakaty/downloader/mt1;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v64

    .line 33
    new-instance v54, Lcom/shabakaty/downloader/kt1$f;

    move-object/from16 v56, v54

    invoke-direct/range {v56 .. v64}, Lcom/shabakaty/downloader/kt1$f;-><init>(JZJJZ)V

    move-object/from16 v60, v2

    move-object v11, v3

    move-object v13, v4

    goto :goto_5

    :cond_9
    move-object/from16 v93, v9

    const-string v8, "#EXT-X-PART-INF"

    .line 34
    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 35
    sget-object v8, Lcom/shabakaty/downloader/mt1;->o:Ljava/util/regex/Pattern;

    invoke-static {v11, v8}, Lcom/shabakaty/downloader/mt1;->e(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v8

    mul-double v8, v8, v40

    double-to-long v8, v8

    move-object/from16 v60, v2

    move-object v11, v3

    move-object v13, v4

    move-wide/from16 v31, v8

    :goto_5
    move-object/from16 v3, v55

    move-object/from16 v4, v80

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v56, -0x1

    const/16 v74, 0x0

    :goto_6
    move/from16 v55, v1

    const/4 v1, 0x1

    goto/16 :goto_22

    :cond_a
    const-string v8, "#EXT-X-MAP"

    .line 36
    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "@"

    const/4 v13, -0x1

    if-eqz v8, :cond_10

    .line 37
    sget-object v8, Lcom/shabakaty/downloader/mt1;->K:Ljava/util/regex/Pattern;

    invoke-static {v11, v8, v2}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v41

    .line 38
    sget-object v8, Lcom/shabakaty/downloader/mt1;->E:Ljava/util/regex/Pattern;

    invoke-static {v11, v8, v2}, Lcom/shabakaty/downloader/mt1;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 39
    sget v11, Lcom/shabakaty/downloader/sy4;->a:I

    .line 40
    invoke-virtual {v8, v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 41
    aget-object v11, v8, v9

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v76

    .line 42
    array-length v9, v8

    const/4 v11, 0x1

    if-le v9, v11, :cond_b

    .line 43
    aget-object v8, v8, v11

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v36

    :cond_b
    const-wide/16 v8, -0x1

    cmp-long v11, v76, v8

    if-nez v11, :cond_c

    move-wide/from16 v36, v18

    :cond_c
    move-object/from16 v8, v75

    if-eqz v10, :cond_e

    if-eqz v8, :cond_d

    goto :goto_7

    :cond_d
    const-string v0, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    const/4 v9, 0x0

    .line 44
    invoke-static {v0, v9}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    :cond_e
    :goto_7
    const/4 v9, 0x0

    .line 45
    new-instance v87, Lcom/shabakaty/downloader/kt1$d;

    move-object/from16 v40, v87

    move-wide/from16 v42, v36

    move-wide/from16 v44, v76

    move-object/from16 v46, v10

    move-object/from16 v47, v8

    invoke-direct/range {v40 .. v47}, Lcom/shabakaty/downloader/kt1$d;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_f

    add-long v36, v36, v76

    :cond_f
    move-object/from16 v75, v8

    move-object/from16 v14, v92

    move-object/from16 v9, v93

    const/4 v8, 0x0

    const-wide/16 v76, -0x1

    goto/16 :goto_0

    :cond_10
    move-object/from16 v8, v75

    const/16 v74, 0x0

    const-string v12, "#EXT-X-TARGETDURATION"

    .line 46
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 47
    sget-object v9, Lcom/shabakaty/downloader/mt1;->m:Ljava/util/regex/Pattern;

    invoke-static {v11, v9}, Lcom/shabakaty/downloader/mt1;->h(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v9

    int-to-long v11, v9

    const-wide/32 v29, 0xf4240

    mul-long v29, v29, v11

    goto :goto_9

    :cond_11
    const-string v12, "#EXT-X-MEDIA-SEQUENCE"

    .line 48
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 49
    sget-object v9, Lcom/shabakaty/downloader/mt1;->x:Ljava/util/regex/Pattern;

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    invoke-static {v11, v9, v12}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v60, v2

    move-object v11, v3

    move-object v13, v4

    move-object/from16 v75, v8

    move-wide/from16 v84, v26

    :goto_8
    move-object/from16 v3, v55

    move-object/from16 v4, v80

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v56, -0x1

    goto/16 :goto_6

    :cond_12
    const-string v12, "#EXT-X-VERSION"

    .line 51
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 52
    sget-object v9, Lcom/shabakaty/downloader/mt1;->p:Ljava/util/regex/Pattern;

    invoke-static {v11, v9}, Lcom/shabakaty/downloader/mt1;->h(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v28

    :goto_9
    move-object/from16 v60, v2

    move-object v11, v3

    move-object v13, v4

    move-object/from16 v75, v8

    goto :goto_8

    :cond_13
    const-string v12, "#EXT-X-DEFINE"

    .line 53
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 54
    sget-object v9, Lcom/shabakaty/downloader/mt1;->a0:Ljava/util/regex/Pattern;

    invoke-static {v11, v9, v2}, Lcom/shabakaty/downloader/mt1;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_14

    move-object/from16 v12, v78

    .line 55
    iget-object v11, v12, Lcom/shabakaty/downloader/it1;->l:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_15

    .line 56
    invoke-virtual {v2, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 57
    :cond_14
    sget-object v9, Lcom/shabakaty/downloader/mt1;->P:Ljava/util/regex/Pattern;

    .line 58
    invoke-static {v11, v9, v2}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    sget-object v12, Lcom/shabakaty/downloader/mt1;->Z:Ljava/util/regex/Pattern;

    .line 59
    invoke-static {v11, v12, v2}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 60
    invoke-virtual {v2, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_a
    move-object/from16 v13, p3

    move-object v14, v3

    move-object/from16 v53, v4

    move-object/from16 v75, v80

    :goto_b
    move-object/from16 v0, v92

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_16

    :cond_16
    const-string v12, "#EXTINF"

    .line 61
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 62
    sget-object v9, Lcom/shabakaty/downloader/mt1;->y:Ljava/util/regex/Pattern;

    .line 63
    invoke-static {v11, v9}, Lcom/shabakaty/downloader/mt1;->e(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v12

    mul-double v12, v12, v40

    double-to-long v12, v12

    .line 64
    sget-object v9, Lcom/shabakaty/downloader/mt1;->z:Ljava/util/regex/Pattern;

    move-object/from16 v14, v93

    invoke-static {v11, v9, v14, v2}, Lcom/shabakaty/downloader/mt1;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v60, v2

    move-object v11, v3

    move-object/from16 v39, v9

    move-wide/from16 v88, v12

    move-object/from16 v3, v55

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v56, -0x1

    move/from16 v55, v1

    move-object v13, v4

    move-object/from16 v4, v80

    const/4 v1, 0x1

    goto/16 :goto_21

    :cond_17
    move-object/from16 v14, v93

    const-string v12, "#EXT-X-SKIP"

    .line 65
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const-wide/16 v45, 0x1

    if-eqz v12, :cond_20

    .line 66
    sget-object v9, Lcom/shabakaty/downloader/mt1;->t:Ljava/util/regex/Pattern;

    invoke-static {v11, v9}, Lcom/shabakaty/downloader/mt1;->h(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v9

    move-object/from16 v11, v79

    if-eqz v11, :cond_18

    .line 67
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_18

    const/4 v12, 0x1

    goto :goto_c

    :cond_18
    const/4 v12, 0x0

    :goto_c
    invoke-static {v12}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 68
    sget v12, Lcom/shabakaty/downloader/sy4;->a:I

    iget-wide v12, v11, Lcom/shabakaty/downloader/kt1;->k:J

    sub-long v12, v26, v12

    long-to-int v13, v12

    add-int/2addr v9, v13

    if-ltz v13, :cond_1f

    .line 69
    iget-object v12, v11, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-gt v9, v12, :cond_1f

    move-object/from16 v75, v8

    :goto_d
    if-ge v13, v9, :cond_1e

    .line 70
    iget-object v8, v11, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/kt1$d;

    move v12, v9

    .line 71
    iget-wide v9, v11, Lcom/shabakaty/downloader/kt1;->k:J

    cmp-long v38, v26, v9

    if-eqz v38, :cond_1a

    .line 72
    iget v9, v11, Lcom/shabakaty/downloader/kt1;->j:I

    sub-int v9, v9, v25

    iget v10, v8, Lcom/shabakaty/downloader/kt1$e;->u:I

    add-int/2addr v9, v10

    .line 73
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v40, v82

    const/4 v11, 0x0

    .line 74
    :goto_e
    iget-object v0, v8, Lcom/shabakaty/downloader/kt1$d;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_19

    .line 75
    iget-object v0, v8, Lcom/shabakaty/downloader/kt1$d;->D:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kt1$b;

    move/from16 v43, v12

    .line 76
    new-instance v12, Lcom/shabakaty/downloader/kt1$b;

    move-object/from16 v56, v12

    move-object/from16 v93, v14

    iget-object v14, v0, Lcom/shabakaty/downloader/kt1$e;->r:Ljava/lang/String;

    move-object/from16 v57, v14

    iget-object v14, v0, Lcom/shabakaty/downloader/kt1$e;->s:Lcom/shabakaty/downloader/kt1$d;

    move-object/from16 v58, v14

    move-object v14, v3

    move-object/from16 v53, v4

    iget-wide v3, v0, Lcom/shabakaty/downloader/kt1$e;->t:J

    move-wide/from16 v59, v3

    iget-object v3, v0, Lcom/shabakaty/downloader/kt1$e;->w:Lcom/shabakaty/downloader/o01;

    move-object/from16 v64, v3

    iget-object v3, v0, Lcom/shabakaty/downloader/kt1$e;->x:Ljava/lang/String;

    move-object/from16 v65, v3

    iget-object v3, v0, Lcom/shabakaty/downloader/kt1$e;->y:Ljava/lang/String;

    move-object/from16 v66, v3

    iget-wide v3, v0, Lcom/shabakaty/downloader/kt1$e;->z:J

    move-wide/from16 v67, v3

    iget-wide v3, v0, Lcom/shabakaty/downloader/kt1$e;->A:J

    move-wide/from16 v69, v3

    iget-boolean v3, v0, Lcom/shabakaty/downloader/kt1$e;->B:Z

    move/from16 v71, v3

    iget-boolean v3, v0, Lcom/shabakaty/downloader/kt1$b;->C:Z

    move/from16 v72, v3

    iget-boolean v3, v0, Lcom/shabakaty/downloader/kt1$b;->D:Z

    move/from16 v73, v3

    move/from16 v61, v9

    move-wide/from16 v62, v40

    invoke-direct/range {v56 .. v73}, Lcom/shabakaty/downloader/kt1$b;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/kt1$d;JIJLcom/shabakaty/downloader/o01;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    .line 77
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-wide v3, v0, Lcom/shabakaty/downloader/kt1$e;->t:J

    add-long v40, v40, v3

    add-int/lit8 v11, v11, 0x1

    move-object v3, v14

    move/from16 v12, v43

    move-object/from16 v4, v53

    move-object/from16 v14, v93

    goto :goto_e

    :cond_19
    move-object/from16 v53, v4

    move/from16 v43, v12

    move-object/from16 v93, v14

    move-object v14, v3

    .line 79
    new-instance v0, Lcom/shabakaty/downloader/kt1$d;

    move-object/from16 v56, v0

    iget-object v3, v8, Lcom/shabakaty/downloader/kt1$e;->r:Ljava/lang/String;

    move-object/from16 v57, v3

    iget-object v3, v8, Lcom/shabakaty/downloader/kt1$e;->s:Lcom/shabakaty/downloader/kt1$d;

    move-object/from16 v58, v3

    iget-object v3, v8, Lcom/shabakaty/downloader/kt1$d;->C:Ljava/lang/String;

    move-object/from16 v59, v3

    iget-wide v3, v8, Lcom/shabakaty/downloader/kt1$e;->t:J

    move-wide/from16 v60, v3

    iget-object v3, v8, Lcom/shabakaty/downloader/kt1$e;->w:Lcom/shabakaty/downloader/o01;

    move-object/from16 v65, v3

    iget-object v3, v8, Lcom/shabakaty/downloader/kt1$e;->x:Ljava/lang/String;

    move-object/from16 v66, v3

    iget-object v3, v8, Lcom/shabakaty/downloader/kt1$e;->y:Ljava/lang/String;

    move-object/from16 v67, v3

    iget-wide v3, v8, Lcom/shabakaty/downloader/kt1$e;->z:J

    move-wide/from16 v68, v3

    iget-wide v3, v8, Lcom/shabakaty/downloader/kt1$e;->A:J

    move-wide/from16 v70, v3

    iget-boolean v3, v8, Lcom/shabakaty/downloader/kt1$e;->B:Z

    move/from16 v72, v3

    move/from16 v62, v9

    move-wide/from16 v63, v82

    move-object/from16 v73, v10

    invoke-direct/range {v56 .. v73}, Lcom/shabakaty/downloader/kt1$d;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/kt1$d;Ljava/lang/String;JIJLcom/shabakaty/downloader/o01;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    move-object v8, v0

    goto :goto_f

    :cond_1a
    move-object/from16 v53, v4

    move/from16 v43, v12

    move-object/from16 v93, v14

    move-object v14, v3

    .line 80
    :goto_f
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-wide v3, v8, Lcom/shabakaty/downloader/kt1$e;->t:J

    add-long v82, v82, v3

    .line 82
    iget-wide v3, v8, Lcom/shabakaty/downloader/kt1$e;->A:J

    const-wide/16 v9, -0x1

    cmp-long v0, v3, v9

    if-eqz v0, :cond_1b

    .line 83
    iget-wide v9, v8, Lcom/shabakaty/downloader/kt1$e;->z:J

    add-long/2addr v9, v3

    move-wide/from16 v36, v9

    .line 84
    :cond_1b
    iget v0, v8, Lcom/shabakaty/downloader/kt1$e;->u:I

    .line 85
    iget-object v3, v8, Lcom/shabakaty/downloader/kt1$e;->s:Lcom/shabakaty/downloader/kt1$d;

    .line 86
    iget-object v4, v8, Lcom/shabakaty/downloader/kt1$e;->w:Lcom/shabakaty/downloader/o01;

    .line 87
    iget-object v10, v8, Lcom/shabakaty/downloader/kt1$e;->x:Ljava/lang/String;

    .line 88
    iget-object v9, v8, Lcom/shabakaty/downloader/kt1$e;->y:Ljava/lang/String;

    if-eqz v9, :cond_1c

    .line 89
    invoke-static/range {v84 .. v85}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    .line 90
    :cond_1c
    iget-object v8, v8, Lcom/shabakaty/downloader/kt1$e;->y:Ljava/lang/String;

    move-object/from16 v75, v8

    :cond_1d
    add-long v84, v84, v45

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, p1

    move/from16 v81, v0

    move-object/from16 v87, v3

    move-object/from16 v38, v4

    move-object v3, v14

    move/from16 v9, v43

    move-object/from16 v4, v53

    move-wide/from16 v48, v82

    move-object/from16 v14, v93

    move-object/from16 v0, p0

    goto/16 :goto_d

    :cond_1e
    move-object/from16 v53, v4

    move-object/from16 v93, v14

    move-object/from16 v78, p0

    move-object/from16 v79, p1

    move-object/from16 v60, v2

    move-object v11, v3

    move-object/from16 v13, v53

    goto/16 :goto_8

    .line 91
    :cond_1f
    new-instance v0, Lcom/shabakaty/downloader/mt1$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/mt1$a;-><init>()V

    throw v0

    :cond_20
    move-object/from16 v53, v4

    move-object/from16 v93, v14

    move-object v14, v3

    const-string v0, "#EXT-X-KEY"

    .line 92
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 93
    sget-object v0, Lcom/shabakaty/downloader/mt1;->H:Ljava/util/regex/Pattern;

    invoke-static {v11, v0, v2}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 94
    sget-object v3, Lcom/shabakaty/downloader/mt1;->I:Ljava/util/regex/Pattern;

    const-string v4, "identity"

    .line 95
    invoke-static {v11, v3, v4, v2}, Lcom/shabakaty/downloader/mt1;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "NONE"

    .line 96
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 97
    invoke-virtual {v6}, Ljava/util/TreeMap;->clear()V

    move-object/from16 v10, v74

    move-object/from16 v38, v10

    move-object/from16 v75, v38

    goto/16 :goto_13

    .line 98
    :cond_21
    sget-object v8, Lcom/shabakaty/downloader/mt1;->L:Ljava/util/regex/Pattern;

    invoke-static {v11, v8, v2}, Lcom/shabakaty/downloader/mt1;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 99
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v3, "AES-128"

    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 101
    sget-object v0, Lcom/shabakaty/downloader/mt1;->K:Ljava/util/regex/Pattern;

    invoke-static {v11, v0, v2}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto/16 :goto_12

    :cond_22
    move-object/from16 v4, v80

    if-nez v4, :cond_23

    .line 102
    invoke-static {v0}, Lcom/shabakaty/downloader/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v80, v0

    goto :goto_10

    :cond_23
    move-object/from16 v80, v4

    .line 103
    :goto_10
    invoke-static {v11, v3, v2}, Lcom/shabakaty/downloader/mt1;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/shabakaty/downloader/o01$b;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 104
    invoke-virtual {v6, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v75, v8

    move-object/from16 v10, v74

    move-object/from16 v38, v10

    goto/16 :goto_13

    :cond_24
    move-object/from16 v75, v8

    move-object/from16 v10, v74

    goto/16 :goto_13

    :cond_25
    move-object/from16 v4, v80

    const-string v0, "#EXT-X-BYTERANGE"

    .line 105
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 106
    sget-object v0, Lcom/shabakaty/downloader/mt1;->D:Ljava/util/regex/Pattern;

    invoke-static {v11, v0, v2}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 107
    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    .line 108
    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 109
    aget-object v9, v0, v3

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v76

    .line 110
    array-length v9, v0

    const/4 v12, 0x1

    if-le v9, v12, :cond_29

    .line 111
    aget-object v0, v0, v12

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v36

    goto :goto_11

    :cond_26
    const/4 v12, 0x1

    const-string v0, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 112
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0x3a

    if-eqz v0, :cond_27

    .line 113
    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v78, v0

    move-object/from16 v79, p1

    move-object/from16 v80, v4

    move-object/from16 v75, v8

    move-object v3, v14

    move-object/from16 v4, v53

    move-object/from16 v14, v92

    move-object/from16 v9, v93

    const/4 v8, 0x0

    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_27
    const-string v0, "#EXT-X-DISCONTINUITY"

    .line 114
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    add-int/lit8 v81, v81, 0x1

    goto :goto_11

    :cond_28
    const-string v0, "#EXT-X-PROGRAM-DATE-TIME"

    .line 115
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    cmp-long v0, v22, v18

    if-nez v0, :cond_2a

    .line 116
    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/sy4;->K(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v22

    sub-long v22, v22, v82

    :cond_29
    :goto_11
    move-object/from16 v80, v4

    :goto_12
    move-object/from16 v75, v8

    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v78, v0

    move-object/from16 v79, p1

    move-object v3, v14

    move-object/from16 v4, v53

    move-object/from16 v14, v92

    move-object/from16 v9, v93

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v13, p3

    move-object/from16 v75, v4

    goto/16 :goto_b

    :cond_2b
    const-string v0, "#EXT-X-GAP"

    .line 117
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object/from16 v0, p0

    move-object/from16 v78, v0

    move-object/from16 v79, p1

    move-object/from16 v80, v4

    move-object/from16 v75, v8

    move-object v3, v14

    move-object/from16 v4, v53

    move-object/from16 v14, v92

    move-object/from16 v9, v93

    const/4 v8, 0x0

    const/16 v52, 0x1

    goto/16 :goto_0

    :cond_2c
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 118
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move-object/from16 v0, p0

    move-object/from16 v78, v0

    move-object/from16 v79, p1

    move-object/from16 v80, v4

    move-object/from16 v75, v8

    move-object v3, v14

    move-object/from16 v4, v53

    move-object/from16 v14, v92

    move-object/from16 v9, v93

    const/4 v8, 0x0

    const/16 v33, 0x1

    goto/16 :goto_0

    :cond_2d
    const-string v0, "#EXT-X-ENDLIST"

    .line 119
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    move-object/from16 v0, p0

    move-object/from16 v78, v0

    move-object/from16 v79, p1

    move-object/from16 v80, v4

    move-object/from16 v75, v8

    move-object v3, v14

    move-object/from16 v4, v53

    move-object/from16 v14, v92

    move-object/from16 v9, v93

    const/4 v8, 0x0

    const/16 v34, 0x1

    goto/16 :goto_0

    :cond_2e
    const-string v0, "#EXT-X-RENDITION-REPORT"

    .line 120
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 121
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v12, v0

    add-long v12, v26, v12

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->isEmpty()Z

    move-result v0

    move-object/from16 v75, v4

    int-to-long v3, v0

    sub-long/2addr v12, v3

    .line 122
    sget-object v0, Lcom/shabakaty/downloader/mt1;->A:Ljava/util/regex/Pattern;

    invoke-static {v11, v0, v12, v13}, Lcom/shabakaty/downloader/mt1;->n(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v3

    .line 123
    invoke-interface/range {v53 .. v53}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {v15}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kt1$d;

    iget-object v0, v0, Lcom/shabakaty/downloader/kt1$d;->D:Ljava/util/List;

    goto :goto_14

    :cond_2f
    move-object/from16 v0, v53

    :goto_14
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v31, v16

    if-eqz v9, :cond_30

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x1

    add-int/lit8 v13, v0, -0x1

    goto :goto_15

    :cond_30
    const/4 v13, -0x1

    .line 125
    :goto_15
    sget-object v0, Lcom/shabakaty/downloader/mt1;->B:Ljava/util/regex/Pattern;

    invoke-static {v11, v0, v13}, Lcom/shabakaty/downloader/mt1;->m(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    move-result v0

    .line 126
    sget-object v9, Lcom/shabakaty/downloader/mt1;->K:Ljava/util/regex/Pattern;

    invoke-static {v11, v9, v2}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v13, p3

    .line 127
    invoke-static {v13, v9}, Lcom/shabakaty/downloader/zw4;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 128
    new-instance v11, Lcom/shabakaty/downloader/kt1$c;

    invoke-direct {v11, v9, v3, v4, v0}, Lcom/shabakaty/downloader/kt1$c;-><init>(Landroid/net/Uri;JI)V

    move-object/from16 v0, v92

    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16
    move-object/from16 v92, v0

    move-object/from16 v60, v2

    move-object v11, v14

    move-object/from16 v13, v53

    move-object/from16 v3, v55

    move-object/from16 v4, v75

    const-wide/16 v56, -0x1

    move/from16 v55, v1

    const/4 v1, 0x1

    goto/16 :goto_20

    :cond_31
    move-object/from16 v13, p3

    move-object/from16 v75, v4

    move-object/from16 v0, v92

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-string v3, "#EXT-X-PRELOAD-HINT"

    .line 129
    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    move-object/from16 v3, v55

    if-eqz v3, :cond_32

    goto :goto_17

    .line 130
    :cond_32
    sget-object v4, Lcom/shabakaty/downloader/mt1;->N:Ljava/util/regex/Pattern;

    invoke-static {v11, v4, v2}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "PART"

    .line 131
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    :goto_17
    move-object/from16 v92, v0

    move/from16 v55, v1

    move-object/from16 v60, v2

    move-object v11, v14

    move-object/from16 v13, v53

    move-object/from16 v4, v75

    goto/16 :goto_1c

    .line 132
    :cond_33
    sget-object v4, Lcom/shabakaty/downloader/mt1;->K:Ljava/util/regex/Pattern;

    invoke-static {v11, v4, v2}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v57

    .line 133
    sget-object v4, Lcom/shabakaty/downloader/mt1;->F:Ljava/util/regex/Pattern;

    const-wide/16 v12, -0x1

    .line 134
    invoke-static {v11, v4, v12, v13}, Lcom/shabakaty/downloader/mt1;->n(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v40

    .line 135
    sget-object v4, Lcom/shabakaty/downloader/mt1;->G:Ljava/util/regex/Pattern;

    .line 136
    invoke-static {v11, v4, v12, v13}, Lcom/shabakaty/downloader/mt1;->n(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v69

    move-wide/from16 v11, v84

    .line 137
    invoke-static {v11, v12, v10, v8}, Lcom/shabakaty/downloader/mt1;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    if-nez v38, :cond_35

    .line 138
    invoke-virtual {v6}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_35

    .line 139
    invoke-virtual {v6}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    const/4 v9, 0x0

    new-array v13, v9, [Lcom/shabakaty/downloader/o01$b;

    invoke-interface {v4, v13}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/shabakaty/downloader/o01$b;

    .line 140
    new-instance v9, Lcom/shabakaty/downloader/o01;

    move-object/from16 v92, v0

    move-object/from16 v13, v75

    const/4 v0, 0x1

    .line 141
    invoke-direct {v9, v13, v0, v4}, Lcom/shabakaty/downloader/o01;-><init>(Ljava/lang/String;Z[Lcom/shabakaty/downloader/o01$b;)V

    move/from16 v55, v1

    move-wide v0, v11

    if-nez v35, :cond_34

    .line 142
    invoke-static {v13, v4}, Lcom/shabakaty/downloader/mt1;->c(Ljava/lang/String;[Lcom/shabakaty/downloader/o01$b;)Lcom/shabakaty/downloader/o01;

    move-result-object v4

    move-object/from16 v35, v4

    :cond_34
    move-object/from16 v38, v9

    goto :goto_18

    :cond_35
    move-object/from16 v92, v0

    move/from16 v55, v1

    move-wide v0, v11

    move-object/from16 v13, v75

    :goto_18
    const-wide/16 v43, -0x1

    cmp-long v4, v40, v43

    if-eqz v4, :cond_36

    cmp-long v9, v69, v43

    if-eqz v9, :cond_38

    .line 143
    :cond_36
    new-instance v3, Lcom/shabakaty/downloader/kt1$b;

    const-wide/16 v59, 0x0

    if-eqz v4, :cond_37

    move-wide/from16 v67, v40

    goto :goto_19

    :cond_37
    move-wide/from16 v67, v18

    :goto_19
    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x1

    move-object/from16 v56, v3

    move-object/from16 v58, v87

    move/from16 v61, v81

    move-wide/from16 v62, v48

    move-object/from16 v64, v38

    move-object/from16 v65, v10

    .line 144
    invoke-direct/range {v56 .. v73}, Lcom/shabakaty/downloader/kt1$b;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/kt1$d;JIJLcom/shabakaty/downloader/o01;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    :cond_38
    move-object/from16 v78, p0

    move-object/from16 v79, p1

    move-wide/from16 v84, v0

    move-object/from16 v75, v8

    move-object/from16 v80, v13

    move-object/from16 v4, v53

    move/from16 v1, v55

    move-object/from16 v9, v93

    const/4 v8, 0x0

    move-object/from16 v0, v78

    move-object/from16 v55, v3

    move-object v3, v14

    goto/16 :goto_1

    :cond_39
    move-object/from16 v92, v0

    move-object/from16 v3, v55

    move-object/from16 v13, v75

    move/from16 v55, v1

    move-wide/from16 v0, v84

    const-string v4, "#EXT-X-PART"

    .line 145
    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 146
    invoke-static {v0, v1, v10, v8}, Lcom/shabakaty/downloader/mt1;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 147
    sget-object v4, Lcom/shabakaty/downloader/mt1;->K:Ljava/util/regex/Pattern;

    invoke-static {v11, v4, v2}, Lcom/shabakaty/downloader/mt1;->q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v57

    .line 148
    sget-object v4, Lcom/shabakaty/downloader/mt1;->n:Ljava/util/regex/Pattern;

    .line 149
    invoke-static {v11, v4}, Lcom/shabakaty/downloader/mt1;->e(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v44

    move-object v4, v13

    mul-double v12, v44, v40

    double-to-long v12, v12

    move-wide/from16 v40, v12

    .line 150
    sget-object v12, Lcom/shabakaty/downloader/mt1;->W:Ljava/util/regex/Pattern;

    const/4 v13, 0x0

    .line 151
    invoke-static {v11, v12, v13}, Lcom/shabakaty/downloader/mt1;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v12

    if-eqz v33, :cond_3a

    .line 152
    invoke-interface/range {v53 .. v53}, Ljava/util/List;->isEmpty()Z

    move-result v42

    if-eqz v42, :cond_3a

    const/16 v42, 0x1

    goto :goto_1a

    :cond_3a
    const/16 v42, 0x0

    :goto_1a
    or-int v72, v12, v42

    .line 153
    sget-object v12, Lcom/shabakaty/downloader/mt1;->X:Ljava/util/regex/Pattern;

    invoke-static {v11, v12, v13}, Lcom/shabakaty/downloader/mt1;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v71

    .line 154
    sget-object v12, Lcom/shabakaty/downloader/mt1;->E:Ljava/util/regex/Pattern;

    invoke-static {v11, v12, v2}, Lcom/shabakaty/downloader/mt1;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3b

    .line 155
    sget v12, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v12, -0x1

    .line 156
    invoke-virtual {v11, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 157
    aget-object v11, v9, v13

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    .line 158
    array-length v11, v9

    const/4 v12, 0x1

    if-le v11, v12, :cond_3c

    .line 159
    aget-object v9, v9, v12

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v90

    goto :goto_1b

    :cond_3b
    const-wide/16 v42, -0x1

    :cond_3c
    :goto_1b
    const-wide/16 v44, -0x1

    cmp-long v9, v42, v44

    if-nez v9, :cond_3d

    move-wide/from16 v90, v18

    :cond_3d
    if-nez v38, :cond_3f

    .line 160
    invoke-virtual {v6}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3f

    .line 161
    invoke-virtual {v6}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v11

    const/4 v13, 0x0

    new-array v12, v13, [Lcom/shabakaty/downloader/o01$b;

    invoke-interface {v11, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/shabakaty/downloader/o01$b;

    .line 162
    new-instance v12, Lcom/shabakaty/downloader/o01;

    const/4 v13, 0x1

    .line 163
    invoke-direct {v12, v4, v13, v11}, Lcom/shabakaty/downloader/o01;-><init>(Ljava/lang/String;Z[Lcom/shabakaty/downloader/o01$b;)V

    move-object v13, v12

    if-nez v35, :cond_3e

    .line 164
    invoke-static {v4, v11}, Lcom/shabakaty/downloader/mt1;->c(Ljava/lang/String;[Lcom/shabakaty/downloader/o01$b;)Lcom/shabakaty/downloader/o01;

    move-result-object v35

    :cond_3e
    move-object/from16 v38, v13

    .line 165
    :cond_3f
    new-instance v11, Lcom/shabakaty/downloader/kt1$b;

    move-object/from16 v56, v11

    const/16 v73, 0x0

    move-object/from16 v58, v87

    move-wide/from16 v59, v40

    move/from16 v61, v81

    move-wide/from16 v62, v48

    move-object/from16 v64, v38

    move-object/from16 v65, v10

    move-wide/from16 v67, v90

    move-wide/from16 v69, v42

    invoke-direct/range {v56 .. v73}, Lcom/shabakaty/downloader/kt1$b;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/kt1$d;JIJLcom/shabakaty/downloader/o01;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-object/from16 v13, v53

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v48, v48, v40

    if-eqz v9, :cond_40

    add-long v90, v90, v42

    :cond_40
    move-wide/from16 v84, v0

    move-object/from16 v60, v2

    move-object v11, v14

    :goto_1c
    const/4 v1, 0x1

    const-wide/16 v56, -0x1

    goto/16 :goto_20

    :cond_41
    move-object v4, v13

    move-object/from16 v13, v53

    const-string v9, "#"

    .line 166
    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_40

    .line 167
    invoke-static {v0, v1, v10, v8}, Lcom/shabakaty/downloader/mt1;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    add-long v84, v0, v45

    .line 168
    invoke-static {v11, v2}, Lcom/shabakaty/downloader/mt1;->r(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v14

    .line 169
    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/kt1$d;

    const-wide/16 v56, -0x1

    cmp-long v14, v76, v56

    if-nez v14, :cond_42

    move-wide/from16 v58, v18

    goto :goto_1d

    :cond_42
    if-eqz v86, :cond_43

    if-nez v87, :cond_43

    if-nez v1, :cond_43

    .line 170
    new-instance v1, Lcom/shabakaty/downloader/kt1$d;

    const-wide/16 v42, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v40, v1

    move-object/from16 v41, v0

    move-wide/from16 v44, v36

    invoke-direct/range {v40 .. v47}, Lcom/shabakaty/downloader/kt1$d;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    move-wide/from16 v58, v36

    :goto_1d
    if-nez v38, :cond_44

    .line 172
    invoke-virtual {v6}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_44

    .line 173
    invoke-virtual {v6}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v12

    move-object/from16 v36, v1

    move-object/from16 v60, v2

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/shabakaty/downloader/o01$b;

    invoke-interface {v12, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/shabakaty/downloader/o01$b;

    .line 174
    new-instance v12, Lcom/shabakaty/downloader/o01;

    const/4 v1, 0x1

    .line 175
    invoke-direct {v12, v4, v1, v2}, Lcom/shabakaty/downloader/o01;-><init>(Ljava/lang/String;Z[Lcom/shabakaty/downloader/o01$b;)V

    if-nez v35, :cond_45

    .line 176
    invoke-static {v4, v2}, Lcom/shabakaty/downloader/mt1;->c(Ljava/lang/String;[Lcom/shabakaty/downloader/o01$b;)Lcom/shabakaty/downloader/o01;

    move-result-object v35

    goto :goto_1e

    :cond_44
    move-object/from16 v36, v1

    move-object/from16 v60, v2

    const/4 v1, 0x1

    move-object/from16 v12, v38

    .line 177
    :cond_45
    :goto_1e
    new-instance v2, Lcom/shabakaty/downloader/kt1$d;

    if-eqz v87, :cond_46

    move-object/from16 v38, v87

    goto :goto_1f

    :cond_46
    move-object/from16 v38, v36

    :goto_1f
    move-object/from16 v36, v2

    move-object/from16 v37, v0

    move-wide/from16 v40, v88

    move/from16 v42, v81

    move-wide/from16 v43, v82

    move-object/from16 v45, v12

    move-object/from16 v46, v10

    move-object/from16 v47, v9

    move-wide/from16 v48, v58

    move-wide/from16 v50, v76

    move-object/from16 v53, v13

    .line 178
    invoke-direct/range {v36 .. v53}, Lcom/shabakaty/downloader/kt1$d;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/kt1$d;Ljava/lang/String;JIJLcom/shabakaty/downloader/o01;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    .line 179
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long v82, v82, v88

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v14, :cond_47

    add-long v58, v58, v76

    :cond_47
    move-object/from16 v79, p1

    move-object v13, v0

    move-object/from16 v38, v12

    move-wide/from16 v88, v18

    move-wide/from16 v76, v56

    move-wide/from16 v36, v58

    move-wide/from16 v48, v82

    move-object/from16 v39, v93

    const/16 v52, 0x0

    goto :goto_21

    :goto_20
    move-object/from16 v79, p1

    :goto_21
    move-object/from16 v78, p0

    move-object/from16 v75, v8

    :goto_22
    move-object/from16 v0, p0

    move-object/from16 v80, v4

    move-object v4, v13

    move/from16 v1, v55

    move-object/from16 v2, v60

    move-object/from16 v14, v92

    move-object/from16 v9, v93

    const/4 v8, 0x0

    move-object/from16 v55, v3

    move-object v3, v11

    goto/16 :goto_0

    :cond_48
    move-object v13, v4

    move-object/from16 v92, v14

    move-object/from16 v3, v55

    move/from16 v55, v1

    const/4 v1, 0x1

    if-eqz v3, :cond_49

    .line 181
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_49
    new-instance v0, Lcom/shabakaty/downloader/kt1;

    cmp-long v2, v22, v18

    move-object/from16 v53, v13

    if-eqz v2, :cond_4a

    const/16 v61, 0x1

    goto :goto_23

    :cond_4a
    const/16 v61, 0x0

    :goto_23
    move-object v4, v0

    move-object/from16 v6, p3

    move-wide/from16 v8, v20

    move/from16 v10, v55

    move-wide/from16 v11, v22

    move/from16 v13, v24

    move-object/from16 v1, v92

    move/from16 v14, v25

    move-object v2, v15

    move-wide/from16 v15, v26

    move/from16 v17, v28

    move-wide/from16 v18, v29

    move-wide/from16 v20, v31

    move/from16 v22, v33

    move/from16 v23, v34

    move/from16 v24, v61

    move-object/from16 v25, v35

    move-object/from16 v26, v2

    move-object/from16 v27, v53

    move-object/from16 v28, v54

    move-object/from16 v29, v1

    invoke-direct/range {v4 .. v29}, Lcom/shabakaty/downloader/kt1;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLcom/shabakaty/downloader/o01;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/kt1$f;Ljava/util/Map;)V

    return-object v0
.end method

.method public static k(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "YES"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static l(Ljava/lang/String;Ljava/util/regex/Pattern;D)D
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public static m(Ljava/lang/String;Ljava/util/regex/Pattern;I)I
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static n(Ljava/lang/String;Ljava/util/regex/Pattern;J)J
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public static o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p2, p3}, Lcom/shabakaty/downloader/mt1;->r(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method public static p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Lcom/shabakaty/downloader/mt1;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Lcom/shabakaty/downloader/mt1;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x13

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p0, p2}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result p2

    const-string v1, "Couldn\'t match "

    const-string v2, " in "

    invoke-static {p2, v1, p1, v2, p0}, Lcom/shabakaty/downloader/nm0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p0

    throw p0
.end method

.method public static r(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/mt1;->b0:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/io/BufferedReader;ZI)I
    .locals 1

    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 1
    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/shabakaty/downloader/sy4;->G(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_0

    :cond_1
    return p2
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v2, 0xef

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v2, 0xbb

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v2, 0xbf

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    :cond_1
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/mt1;->s(Ljava/io/BufferedReader;ZI)I

    move-result v1

    const/4 v2, 0x7

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    const-string v5, "#EXTM3U"

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v1, v5, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v0, v3, v1}, Lcom/shabakaty/downloader/mt1;->s(Ljava/io/BufferedReader;ZI)I

    move-result v1

    .line 10
    invoke-static {v1}, Lcom/shabakaty/downloader/sy4;->G(I)Z

    move-result v3

    :cond_4
    :goto_1
    const/4 v1, 0x0

    if-eqz v3, :cond_a

    .line 11
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const-string v3, "#EXT-X-STREAM-INF"

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 15
    invoke-virtual {p2, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcom/shabakaty/downloader/mt1$b;

    invoke-direct {v1, p2, v0}, Lcom/shabakaty/downloader/mt1$b;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/mt1;->i(Lcom/shabakaty/downloader/mt1$b;Ljava/lang/String;)Lcom/shabakaty/downloader/it1;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :goto_3
    sget p2, Lcom/shabakaty/downloader/sy4;->a:I

    .line 18
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_6
    :try_start_2
    const-string v3, "#EXT-X-TARGETDURATION"

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "#EXT-X-MEDIA-SEQUENCE"

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "#EXTINF"

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "#EXT-X-KEY"

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "#EXT-X-BYTERANGE"

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "#EXT-X-DISCONTINUITY"

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "#EXT-X-ENDLIST"

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    .line 27
    :cond_7
    invoke-virtual {p2, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 28
    :cond_8
    :goto_4
    invoke-virtual {p2, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v1, p0, Lcom/shabakaty/downloader/mt1;->a:Lcom/shabakaty/downloader/it1;

    iget-object v2, p0, Lcom/shabakaty/downloader/mt1;->b:Lcom/shabakaty/downloader/kt1;

    new-instance v3, Lcom/shabakaty/downloader/mt1$b;

    invoke-direct {v3, p2, v0}, Lcom/shabakaty/downloader/mt1$b;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 30
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {v1, v2, v3, p1}, Lcom/shabakaty/downloader/mt1;->j(Lcom/shabakaty/downloader/it1;Lcom/shabakaty/downloader/kt1;Lcom/shabakaty/downloader/mt1$b;Ljava/lang/String;)Lcom/shabakaty/downloader/kt1;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    :goto_5
    return-object p1

    .line 32
    :cond_9
    sget p1, Lcom/shabakaty/downloader/sy4;->a:I

    .line 33
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    const-string p1, "Failed to parse the playlist, could not identify any tags."

    .line 34
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    :cond_a
    :try_start_4
    const-string p1, "Input does not start with the #EXTM3U header."

    .line 35
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 36
    sget p2, Lcom/shabakaty/downloader/sy4;->a:I

    .line 37
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 38
    :catch_2
    throw p1
.end method
