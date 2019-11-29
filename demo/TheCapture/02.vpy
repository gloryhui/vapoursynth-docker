import sys
sys.path.append("/usr/local/share/vsscripts")

import vapoursynth as vs
import math

core = vs.get_core(threads=20)
import mvsfunc as mvf
import havsfunc as haf
import CSMOD as cs
ret = core.lsmas.LWLibavSource(source="/opt/The.Capture.S01E02.1080p.HDTV.x264-BRISK.mkv",format="YUV420P16") #
#ret = core.ffms2.Source(source=r'H:\115download\509 Blood Money\BDMV\STREAM\00000.m2ts')
#ret = core.std.CropRel(ret, left=0,  right=0, top=138, bottom=138)

ret = mvf.Depth(ret, depth=16)
ret = haf.SMDegrain(input=ret ,tr=3,contrasharp=30) # plane=3  ,contrasharp=30

# ret = core.knlm.KNLMeansCL(clip=ret,d = 1, a = 4, h = 2,device_type="cpu")
# ret = mvf.BM3D(ret, sigma=[10,10,10], radius1=1)

# ret =cs.CSMOD(ret,preset = "medium",strength=16)#, edgemode=1
ret = haf.LSFmod(ret, strength=10)
# ret = core.f3kdb.Deband(ret,output_depth=16) #

ret = mvf.Depth(ret, depth=10)
ret.set_output()