.class public final enum Lcom/shabakaty/downloader/ti0;
.super Ljava/lang/Enum;
.source "DNSRecordType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/ti0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/shabakaty/downloader/ti0;

.field public static final enum B:Lcom/shabakaty/downloader/ti0;

.field public static final enum C:Lcom/shabakaty/downloader/ti0;

.field public static D:Ljava/util/logging/Logger;

.field public static final synthetic E:[Lcom/shabakaty/downloader/ti0;

.field public static final enum s:Lcom/shabakaty/downloader/ti0;

.field public static final enum t:Lcom/shabakaty/downloader/ti0;

.field public static final enum u:Lcom/shabakaty/downloader/ti0;

.field public static final enum v:Lcom/shabakaty/downloader/ti0;

.field public static final enum w:Lcom/shabakaty/downloader/ti0;

.field public static final enum x:Lcom/shabakaty/downloader/ti0;

.field public static final enum y:Lcom/shabakaty/downloader/ti0;

.field public static final enum z:Lcom/shabakaty/downloader/ti0;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 63

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ti0;

    const-string v1, "TYPE_IGNORE"

    const/4 v2, 0x0

    const-string v3, "ignore"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/ti0;->s:Lcom/shabakaty/downloader/ti0;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ti0;

    const-string v2, "TYPE_A"

    const/4 v3, 0x1

    const-string v4, "a"

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/ti0;->t:Lcom/shabakaty/downloader/ti0;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/ti0;

    const-string v3, "TYPE_NS"

    const/4 v4, 0x2

    const-string v5, "ns"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/ti0;

    const-string v4, "TYPE_MD"

    const/4 v5, 0x3

    const-string v6, "md"

    invoke-direct {v3, v4, v5, v6, v5}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/ti0;

    const-string v5, "TYPE_MF"

    const/4 v6, 0x4

    const-string v7, "mf"

    invoke-direct {v4, v5, v6, v7, v6}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 6
    new-instance v5, Lcom/shabakaty/downloader/ti0;

    const-string v6, "TYPE_CNAME"

    const/4 v7, 0x5

    const-string v8, "cname"

    invoke-direct {v5, v6, v7, v8, v7}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/shabakaty/downloader/ti0;->u:Lcom/shabakaty/downloader/ti0;

    .line 7
    new-instance v6, Lcom/shabakaty/downloader/ti0;

    const-string v7, "TYPE_SOA"

    const/4 v8, 0x6

    const-string v9, "soa"

    invoke-direct {v6, v7, v8, v9, v8}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 8
    new-instance v7, Lcom/shabakaty/downloader/ti0;

    const-string v8, "TYPE_MB"

    const/4 v9, 0x7

    const-string v10, "mb"

    invoke-direct {v7, v8, v9, v10, v9}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 9
    new-instance v8, Lcom/shabakaty/downloader/ti0;

    const-string v9, "TYPE_MG"

    const/16 v10, 0x8

    const-string v11, "mg"

    invoke-direct {v8, v9, v10, v11, v10}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 10
    new-instance v9, Lcom/shabakaty/downloader/ti0;

    const-string v10, "TYPE_MR"

    const/16 v11, 0x9

    const-string v12, "mr"

    invoke-direct {v9, v10, v11, v12, v11}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 11
    new-instance v10, Lcom/shabakaty/downloader/ti0;

    const-string v11, "TYPE_NULL"

    const/16 v12, 0xa

    const-string v13, "null"

    invoke-direct {v10, v11, v12, v13, v12}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 12
    new-instance v11, Lcom/shabakaty/downloader/ti0;

    const-string v12, "TYPE_WKS"

    const/16 v13, 0xb

    const-string v14, "wks"

    invoke-direct {v11, v12, v13, v14, v13}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 13
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v13, "TYPE_PTR"

    const/16 v14, 0xc

    const-string v15, "ptr"

    invoke-direct {v12, v13, v14, v15, v14}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/shabakaty/downloader/ti0;->v:Lcom/shabakaty/downloader/ti0;

    .line 14
    new-instance v13, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_HINFO"

    const/16 v15, 0xd

    move-object/from16 v16, v12

    const-string v12, "hinfo"

    invoke-direct {v13, v14, v15, v12, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/shabakaty/downloader/ti0;->w:Lcom/shabakaty/downloader/ti0;

    .line 15
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_MINFO"

    const/16 v15, 0xe

    move-object/from16 v17, v13

    const-string v13, "minfo"

    invoke-direct {v12, v14, v15, v13, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 16
    new-instance v13, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_MX"

    const/16 v15, 0xf

    move-object/from16 v18, v12

    const-string v12, "mx"

    invoke-direct {v13, v14, v15, v12, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 17
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_TXT"

    const/16 v15, 0x10

    move-object/from16 v19, v13

    const-string v13, "txt"

    invoke-direct {v12, v14, v15, v13, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/shabakaty/downloader/ti0;->x:Lcom/shabakaty/downloader/ti0;

    .line 18
    new-instance v13, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_RP"

    const/16 v15, 0x11

    move-object/from16 v20, v12

    const-string v12, "rp"

    invoke-direct {v13, v14, v15, v12, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 19
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_AFSDB"

    const/16 v15, 0x12

    move-object/from16 v21, v13

    const-string v13, "afsdb"

    invoke-direct {v12, v14, v15, v13, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 20
    new-instance v13, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_X25"

    const/16 v15, 0x13

    move-object/from16 v22, v12

    const-string v12, "x25"

    invoke-direct {v13, v14, v15, v12, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 21
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_ISDN"

    const/16 v15, 0x14

    move-object/from16 v23, v13

    const-string v13, "isdn"

    invoke-direct {v12, v14, v15, v13, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 22
    new-instance v13, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_RT"

    const/16 v15, 0x15

    move-object/from16 v24, v12

    const-string v12, "rt"

    invoke-direct {v13, v14, v15, v12, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 23
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_NSAP"

    const/16 v15, 0x16

    move-object/from16 v25, v13

    const-string v13, "nsap"

    invoke-direct {v12, v14, v15, v13, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 24
    new-instance v13, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_NSAP_PTR"

    const/16 v15, 0x17

    move-object/from16 v26, v12

    const-string v12, "nsap-otr"

    invoke-direct {v13, v14, v15, v12, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 25
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_SIG"

    const/16 v15, 0x18

    move-object/from16 v27, v13

    const-string v13, "sig"

    invoke-direct {v12, v14, v15, v13, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 26
    new-instance v13, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_KEY"

    const/16 v15, 0x19

    move-object/from16 v28, v12

    const-string v12, "key"

    invoke-direct {v13, v14, v15, v12, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 27
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_PX"

    const/16 v15, 0x1a

    move-object/from16 v29, v13

    const-string v13, "px"

    invoke-direct {v12, v14, v15, v13, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 28
    new-instance v13, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_GPOS"

    const/16 v15, 0x1b

    move-object/from16 v30, v12

    const-string v12, "gpos"

    invoke-direct {v13, v14, v15, v12, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 29
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_AAAA"

    const/16 v15, 0x1c

    move-object/from16 v31, v13

    const-string v13, "aaaa"

    invoke-direct {v12, v14, v15, v13, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/shabakaty/downloader/ti0;->y:Lcom/shabakaty/downloader/ti0;

    .line 30
    new-instance v13, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_LOC"

    const/16 v15, 0x1d

    move-object/from16 v32, v12

    const-string v12, "loc"

    invoke-direct {v13, v14, v15, v12, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 31
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_NXT"

    const/16 v15, 0x1e

    move-object/from16 v33, v13

    const-string v13, "nxt"

    invoke-direct {v12, v14, v15, v13, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 32
    new-instance v13, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_EID"

    const/16 v15, 0x1f

    move-object/from16 v34, v12

    const-string v12, "eid"

    invoke-direct {v13, v14, v15, v12, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 33
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_NIMLOC"

    const/16 v15, 0x20

    move-object/from16 v35, v13

    const-string v13, "nimloc"

    invoke-direct {v12, v14, v15, v13, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 34
    new-instance v13, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_SRV"

    const/16 v15, 0x21

    move-object/from16 v36, v12

    const-string v12, "srv"

    invoke-direct {v13, v14, v15, v12, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/shabakaty/downloader/ti0;->z:Lcom/shabakaty/downloader/ti0;

    .line 35
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_ATMA"

    const/16 v15, 0x22

    move-object/from16 v37, v13

    const-string v13, "atma"

    invoke-direct {v12, v14, v15, v13, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 36
    new-instance v13, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_NAPTR"

    const/16 v15, 0x23

    move-object/from16 v38, v12

    const-string v12, "naptr"

    invoke-direct {v13, v14, v15, v12, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 37
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_KX"

    const/16 v15, 0x24

    move-object/from16 v39, v13

    const-string v13, "kx"

    invoke-direct {v12, v14, v15, v13, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 38
    new-instance v13, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_CERT"

    const/16 v15, 0x25

    move-object/from16 v40, v12

    const-string v12, "cert"

    invoke-direct {v13, v14, v15, v12, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 39
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_A6"

    const/16 v15, 0x26

    move-object/from16 v41, v13

    const-string v13, "a6"

    invoke-direct {v12, v14, v15, v13, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/shabakaty/downloader/ti0;->A:Lcom/shabakaty/downloader/ti0;

    .line 40
    new-instance v13, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_DNAME"

    const/16 v15, 0x27

    move-object/from16 v42, v12

    const-string v12, "dname"

    invoke-direct {v13, v14, v15, v12, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 41
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_SINK"

    const/16 v15, 0x28

    move-object/from16 v43, v13

    const-string v13, "sink"

    invoke-direct {v12, v14, v15, v13, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 42
    new-instance v13, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_OPT"

    const/16 v15, 0x29

    move-object/from16 v44, v12

    const-string v12, "opt"

    invoke-direct {v13, v14, v15, v12, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/shabakaty/downloader/ti0;->B:Lcom/shabakaty/downloader/ti0;

    .line 43
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_APL"

    const/16 v15, 0x2a

    move-object/from16 v45, v13

    const-string v13, "apl"

    invoke-direct {v12, v14, v15, v13, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 44
    new-instance v13, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_DS"

    const/16 v15, 0x2b

    move-object/from16 v46, v12

    const-string v12, "ds"

    invoke-direct {v13, v14, v15, v12, v15}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 45
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v14, "TYPE_SSHFP"

    const/16 v15, 0x2c

    move-object/from16 v47, v13

    const-string v13, "sshfp"

    move-object/from16 v48, v11

    const/16 v11, 0x2c

    invoke-direct {v12, v14, v15, v13, v11}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 46
    new-instance v11, Lcom/shabakaty/downloader/ti0;

    const-string v13, "TYPE_RRSIG"

    const/16 v14, 0x2d

    const-string v15, "rrsig"

    move-object/from16 v49, v12

    const/16 v12, 0x2e

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 47
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v13, "TYPE_NSEC"

    const/16 v14, 0x2e

    const-string v15, "nsec"

    move-object/from16 v50, v11

    const/16 v11, 0x2f

    invoke-direct {v12, v13, v14, v15, v11}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 48
    new-instance v11, Lcom/shabakaty/downloader/ti0;

    const-string v13, "TYPE_DNSKEY"

    const/16 v14, 0x2f

    const-string v15, "dnskey"

    move-object/from16 v51, v12

    const/16 v12, 0x30

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 49
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v13, "TYPE_UINFO"

    const/16 v14, 0x30

    const-string v15, "uinfo"

    move-object/from16 v52, v11

    const/16 v11, 0x64

    invoke-direct {v12, v13, v14, v15, v11}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 50
    new-instance v11, Lcom/shabakaty/downloader/ti0;

    const-string v13, "TYPE_UID"

    const/16 v14, 0x31

    const-string v15, "uid"

    move-object/from16 v53, v12

    const/16 v12, 0x65

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 51
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v13, "TYPE_GID"

    const/16 v14, 0x32

    const-string v15, "gid"

    move-object/from16 v54, v11

    const/16 v11, 0x66

    invoke-direct {v12, v13, v14, v15, v11}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 52
    new-instance v11, Lcom/shabakaty/downloader/ti0;

    const-string v13, "TYPE_UNSPEC"

    const/16 v14, 0x33

    const-string v15, "unspec"

    move-object/from16 v55, v12

    const/16 v12, 0x67

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 53
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v13, "TYPE_TKEY"

    const/16 v14, 0x34

    const-string v15, "tkey"

    move-object/from16 v56, v11

    const/16 v11, 0xf9

    invoke-direct {v12, v13, v14, v15, v11}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 54
    new-instance v11, Lcom/shabakaty/downloader/ti0;

    const-string v13, "TYPE_TSIG"

    const/16 v14, 0x35

    const-string v15, "tsig"

    move-object/from16 v57, v12

    const/16 v12, 0xfa

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 55
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v13, "TYPE_IXFR"

    const/16 v14, 0x36

    const-string v15, "ixfr"

    move-object/from16 v58, v11

    const/16 v11, 0xfb

    invoke-direct {v12, v13, v14, v15, v11}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 56
    new-instance v11, Lcom/shabakaty/downloader/ti0;

    const-string v13, "TYPE_AXFR"

    const/16 v14, 0x37

    const-string v15, "axfr"

    move-object/from16 v59, v12

    const/16 v12, 0xfc

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 57
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v13, "TYPE_MAILA"

    const/16 v14, 0x38

    const-string v15, "mails"

    move-object/from16 v60, v11

    const/16 v11, 0xfd

    invoke-direct {v12, v13, v14, v15, v11}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 58
    new-instance v11, Lcom/shabakaty/downloader/ti0;

    const-string v13, "TYPE_MAILB"

    const/16 v14, 0x39

    const-string v15, "mailb"

    move-object/from16 v61, v12

    const/16 v12, 0xfe

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 59
    new-instance v12, Lcom/shabakaty/downloader/ti0;

    const-string v13, "TYPE_ANY"

    const/16 v14, 0x3a

    const-string v15, "any"

    move-object/from16 v62, v11

    const/16 v11, 0xff

    invoke-direct {v12, v13, v14, v15, v11}, Lcom/shabakaty/downloader/ti0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/shabakaty/downloader/ti0;->C:Lcom/shabakaty/downloader/ti0;

    const/16 v11, 0x3b

    new-array v11, v11, [Lcom/shabakaty/downloader/ti0;

    const/4 v13, 0x0

    aput-object v0, v11, v13

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    aput-object v2, v11, v0

    const/4 v0, 0x3

    aput-object v3, v11, v0

    const/4 v0, 0x4

    aput-object v4, v11, v0

    const/4 v0, 0x5

    aput-object v5, v11, v0

    const/4 v0, 0x6

    aput-object v6, v11, v0

    const/4 v0, 0x7

    aput-object v7, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v9, v11, v0

    const/16 v0, 0xa

    aput-object v10, v11, v0

    const/16 v0, 0xb

    aput-object v48, v11, v0

    const/16 v0, 0xc

    aput-object v16, v11, v0

    const/16 v0, 0xd

    aput-object v17, v11, v0

    const/16 v0, 0xe

    aput-object v18, v11, v0

    const/16 v0, 0xf

    aput-object v19, v11, v0

    const/16 v0, 0x10

    aput-object v20, v11, v0

    const/16 v0, 0x11

    aput-object v21, v11, v0

    const/16 v0, 0x12

    aput-object v22, v11, v0

    const/16 v0, 0x13

    aput-object v23, v11, v0

    const/16 v0, 0x14

    aput-object v24, v11, v0

    const/16 v0, 0x15

    aput-object v25, v11, v0

    const/16 v0, 0x16

    aput-object v26, v11, v0

    const/16 v0, 0x17

    aput-object v27, v11, v0

    const/16 v0, 0x18

    aput-object v28, v11, v0

    const/16 v0, 0x19

    aput-object v29, v11, v0

    const/16 v0, 0x1a

    aput-object v30, v11, v0

    const/16 v0, 0x1b

    aput-object v31, v11, v0

    const/16 v0, 0x1c

    aput-object v32, v11, v0

    const/16 v0, 0x1d

    aput-object v33, v11, v0

    const/16 v0, 0x1e

    aput-object v34, v11, v0

    const/16 v0, 0x1f

    aput-object v35, v11, v0

    const/16 v0, 0x20

    aput-object v36, v11, v0

    const/16 v0, 0x21

    aput-object v37, v11, v0

    const/16 v0, 0x22

    aput-object v38, v11, v0

    const/16 v0, 0x23

    aput-object v39, v11, v0

    const/16 v0, 0x24

    aput-object v40, v11, v0

    const/16 v0, 0x25

    aput-object v41, v11, v0

    const/16 v0, 0x26

    aput-object v42, v11, v0

    const/16 v0, 0x27

    aput-object v43, v11, v0

    const/16 v0, 0x28

    aput-object v44, v11, v0

    const/16 v0, 0x29

    aput-object v45, v11, v0

    const/16 v0, 0x2a

    aput-object v46, v11, v0

    const/16 v0, 0x2b

    aput-object v47, v11, v0

    const/16 v0, 0x2c

    aput-object v49, v11, v0

    const/16 v0, 0x2d

    aput-object v50, v11, v0

    const/16 v0, 0x2e

    aput-object v51, v11, v0

    const/16 v0, 0x2f

    aput-object v52, v11, v0

    const/16 v0, 0x30

    aput-object v53, v11, v0

    const/16 v0, 0x31

    aput-object v54, v11, v0

    const/16 v0, 0x32

    aput-object v55, v11, v0

    const/16 v0, 0x33

    aput-object v56, v11, v0

    const/16 v0, 0x34

    aput-object v57, v11, v0

    const/16 v0, 0x35

    aput-object v58, v11, v0

    const/16 v0, 0x36

    aput-object v59, v11, v0

    const/16 v0, 0x37

    aput-object v60, v11, v0

    const/16 v0, 0x38

    aput-object v61, v11, v0

    const/16 v0, 0x39

    aput-object v62, v11, v0

    const/16 v0, 0x3a

    aput-object v12, v11, v0

    .line 60
    sput-object v11, Lcom/shabakaty/downloader/ti0;->E:[Lcom/shabakaty/downloader/ti0;

    .line 61
    const-class v0, Lcom/shabakaty/downloader/ti0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ti0;->D:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p4, p0, Lcom/shabakaty/downloader/ti0;->r:I

    return-void
.end method

.method public static f(I)Lcom/shabakaty/downloader/ti0;
    .locals 5

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/ti0;->values()[Lcom/shabakaty/downloader/ti0;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/shabakaty/downloader/ti0;->r:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/ti0;->D:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find record type for index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 4
    sget-object p0, Lcom/shabakaty/downloader/ti0;->s:Lcom/shabakaty/downloader/ti0;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/ti0;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/ti0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/ti0;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/ti0;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ti0;->E:[Lcom/shabakaty/downloader/ti0;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/ti0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/ti0;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/ti0;->r:I

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
